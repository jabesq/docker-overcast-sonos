# Use an official Python runtime as a base image
FROM python:2.7-alpine
MAINTAINER Hugo Dupras <jabesq@gmail.com>

EXPOSE 8140

WORKDIR /code

RUN apk add --no-cache\
 git \
 libxml2-dev\
 libxslt-dev\
 python-dev \
 zlib-dev \
 alpine-sdk

RUN git clone -n https://github.com/jacobian/overcast-sonos.git
WORKDIR overcast-sonos
RUN git checkout master

RUN pip install -r requirements.txt

ENV OVERCAST_USERNAME=you@there.com
ENV OVERCAST_PASSWORD=1234

ENTRYPOINT python overcast-sonos.py
