CREATE DATABASE IF NOT EXISTS civiclink_analytics;

CREATE TABLE IF NOT EXISTS civiclink_analytics.event_stream (
    event_time      DateTime64(3),
    domain          LowCardinality(String),
    entity          LowCardinality(String),
    event           LowCardinality(String),
    correlation_id  String,
    payload         String                CODEC(ZSTD(3))
) ENGINE = MergeTree
ORDER BY (domain, event_time)
PARTITION BY toYYYYMM(event_time)
TTL event_time + INTERVAL 7 YEAR;
