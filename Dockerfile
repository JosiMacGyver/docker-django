# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/

RUN apt-get update
WORKDIR /opt
ADD ./oracle-instantclient-basic_21.6.0.0.0-2_amd64.deb /opt
RUN apt-get install libaio1
RUN dpkg -i oracle-instantclient-basic_21.6.0.0.0-2_amd64.deb
