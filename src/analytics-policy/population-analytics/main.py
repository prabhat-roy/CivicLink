import os
from datetime import datetime, timezone
from fastapi import FastAPI

app = FastAPI(title="population-analytics", version="0.1.0", description="Demographic + programme analytics")


@app.get("/healthz")
def health() -> dict:
    return {
        "status": "ok",
        "service": "population-analytics",
        "checked_at": datetime.now(timezone.utc).isoformat(),
    }


if __name__ == "__main__":
    import uvicorn

    port = int(os.environ.get("PORT", "50300"))
    uvicorn.run(app, host="0.0.0.0", port=port)