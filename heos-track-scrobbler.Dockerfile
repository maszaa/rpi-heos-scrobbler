FROM arm32v7/python:3.7-alpine

WORKDIR /usr/src

COPY heos-scrobbler/heos-track-scrobbler/requirements.txt ./

RUN pip install -r requirements.txt

COPY heos-scrobbler/heos-track-scrobbler/ ./
