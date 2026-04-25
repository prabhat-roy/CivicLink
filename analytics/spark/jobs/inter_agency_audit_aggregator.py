"""Aggregate inter-agency consent flows from Kafka -> ClickHouse."""
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, window

spark = SparkSession.builder.appName("inter-agency-audit").getOrCreate()
df = (
    spark.readStream.format("kafka")
    .option("kafka.bootstrap.servers", "kafka.messaging:9092")
    .option("subscribe", "inter-agency.consent.granted")
    .load()
)
agg = (
    df.selectExpr("CAST(value AS STRING) AS json")
    .selectExpr("json_tuple(json,'requesting_agency','providing_agency','citizen_token') AS (req,prov,cit)")
    .groupBy(window(col("timestamp"), "1 hour"), "req", "prov")
    .count()
)
(
    agg.writeStream.format("clickhouse")
    .outputMode("complete")
    .option("table", "civiclink_analytics.inter_agency_hourly")
    .start()
    .awaitTermination()
)
