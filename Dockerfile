FROM python:3.11-slim

WORKDIR /app

COPY organize.py ./

ENTRYPOINT ["python", "organize.py"]
