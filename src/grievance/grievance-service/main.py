import os
from datetime import datetime, timezone
from fastapi import FastAPI

app = FastAPI(title="grievance-service", version="0.1.0", description="NLP-classified grievances")


@app.get("/healthz")
def health() -> dict:
    return {
        "status": "ok",
        "service": "grievance-service",
        "checked_at": datetime.now(timezone.utc).isoformat(),
    }


if __name__ == "__main__":
    import uvicorn

    port = int(os.environ.get("PORT", "50220"))
    uvicorn.run(app, host="0.0.0.0", port=port)