# Python 기반 이미지 사용
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# entrypoint 스크립트 복사 및 권한 부여 (다른 경로에 저장)
COPY entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "backend.wsgi:application"]
