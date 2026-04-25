"""Locust scenario for CivicLink — citizen self-service flows."""
from locust import HttpUser, task, between


class CitizenUser(HttpUser):
    wait_time = between(1, 5)
    host = "https://api.civiclink.gov"

    def on_start(self):
        self.token = self.client.post(
            "/v1/auth/login",
            json={"national_id": "TEST-0001", "otp": "000000"},
        ).json().get("token")
        self.headers = {"Authorization": f"Bearer {self.token}"}

    @task(5)
    def browse_services(self):
        self.client.get("/v1/services/catalogue", headers=self.headers)

    @task(2)
    def view_grievance_status(self):
        self.client.get("/v1/grievance/me", headers=self.headers)

    @task(1)
    def file_grievance(self):
        self.client.post(
            "/v1/grievance",
            headers=self.headers,
            json={"category": "property-tax", "description": "Locust load test."},
        )
