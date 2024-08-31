FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app.py app.py

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
