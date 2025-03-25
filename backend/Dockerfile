# Python 기반 이미지 사용
FROM python:3.11-slim

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 프로젝트 파일 복사
COPY . .

# Django 실행 명령
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "backend.wsgi:application"]