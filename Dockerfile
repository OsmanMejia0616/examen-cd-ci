FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV SECRET_KEY=${SECRET_KEY}
ENV ENVIRONMENT=production

EXPOSE 8000

CMD ["python", "app.py"]
