FROM python:3.11-slim

WORKDIR /app

# Dépendances système
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc libpq-dev curl \
    && rm -rf /var/lib/apt/lists/*

# Installer PyTorch version CPU (léger — 200Mo au lieu de 532Mo)
RUN pip install --no-cache-dir --timeout 300 \
    torch==2.2.2+cpu \
    --extra-index-url https://download.pytorch.org/whl/cpu

# Dépendances Python (avec timeout augmenté)
COPY requirements.txt .
RUN pip install --no-cache-dir --timeout 300 -r requirements.txt

# Code source
COPY . .

RUN mkdir -p knowledge_base

EXPOSE 8000

CMD uvicorn app.main:app --host 0.0.0.0 --port ${PORT:-8000}