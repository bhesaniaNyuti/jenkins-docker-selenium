FROM selenium/standalone-chrome:latest

USER root

RUN apt-get update && apt-get install -y python3 python3-pip

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY test_selenium.py .

CMD ["python3", "test_selenium.py"]