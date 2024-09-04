
FROM python:3.9-slim
 

WORKDIR /app
 

COPY book_catalog/requirements.txt .
 

RUN pip install --no-cache-dir -r requirements.txt
 

COPY book_catalog /app
 

EXPOSE 8000
 

ENV DATABASE_URL=${DATABASE_URL}
 

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]