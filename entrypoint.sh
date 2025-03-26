#!/bin/sh
set -e

# 데이터베이스 마이그레이션 실행
python manage.py migrate --noinput

# 정적 파일 수집
python manage.py collectstatic --noinput

# gunicorn 실행 (CMD로 전달된 인자 사용)
exec "$@"
