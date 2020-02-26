FROM python:3.8.1-buster

COPY . /app
WORKDIR /app
EXPOSE 8000

CMD ["python", "-u", "./main.py", "0.0.0.0", "8000"]
