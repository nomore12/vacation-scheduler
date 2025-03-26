FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# wait-for-it.sh 스크립트 복사 및 실행 권한 부여
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

# entrypoint 스크립트 복사 및 권한 부여
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "backend.wsgi:application"]
