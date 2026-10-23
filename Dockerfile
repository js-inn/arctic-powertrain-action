FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends build-essential git && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
ENTRYPOINT ["python3", "/app/src/entrypoint.py"]
