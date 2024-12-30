FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install flask

COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
