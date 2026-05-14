FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; else echo "no requirements file"; fi

CMD ["python", "app/main.py"]
