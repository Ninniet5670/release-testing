FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip binutils

WORKDIR /app

COPY src/testing/test.py .

RUN pip3 install pyinstaller

RUN pyinstaller test.py
