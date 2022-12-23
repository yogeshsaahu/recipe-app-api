FROM python:3.9-alpine
MAINTAINER yogesh dev

ENV PYTHONUNBUFFERED 1

COPY ./requiremets.txt /requiremets.txt
RUN pip install -r /requiremets.txt

RUN  mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
