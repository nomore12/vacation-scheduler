# Python 기반 이미지 사용
FROM python:3.11-slim

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 프로젝트 파일 복사
COPY . .

# entrypoint 스크립트 복사 및 권한 부여
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# entrypoint 스크립트 설정
ENTRYPOINT ["/app/entrypoint.sh"]

# Django 실행 명령
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "backend.wsgi:application"]
