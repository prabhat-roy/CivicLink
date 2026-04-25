"""Daily population analytics ETL — Postgres -> ClickHouse."""
from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id="daily_population_etl",
    start_date=datetime(2026, 1, 1),
    schedule="@daily",
    catchup=False,
    tags=["civiclink", "analytics-policy"],
) as dag:
    extract = BashOperator(task_id="extract", bash_command="dbt run --select staging.civic_*")
    transform = BashOperator(task_id="transform", bash_command="dbt run --select analytics_policy.*")
    test = BashOperator(task_id="test", bash_command="dbt test --select analytics_policy.*")
    extract >> transform >> test
