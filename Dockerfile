# 기반 이미지 설정
FROM python:3.12-slim

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 설치
COPY requirements.txt .
RUN pip install -r requirements.txt

# 소스코드 복사
COPY app.py .
COPY data ./data

# 포트 설정
EXPOSE 8000

# 명령어 입력
CMD ["python", "-c", "from app import app; app.run(host='0.0.0.0', port=8000)"]