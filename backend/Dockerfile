FROM python:3.11-slim

WORKDIR /app

# 의존성 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 프로젝트 파일 복사 (여기서 . 전체를 복사하면 /app에 마운트되는 경우 덮어쓰기가 발생할 수 있음)
COPY . .

# entrypoint 스크립트 복사 및 권한 부여 (다른 경로에 저장하여 볼륨 마운트 영향에서 벗어남)
COPY entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "backend.wsgi:application"]
