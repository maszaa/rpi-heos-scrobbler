FROM arm32v7/python:3.8-alpine

RUN pip install --upgrade pip

WORKDIR /usr/src

COPY heos-scrobbler/heos-track-scrobbler/requirements.txt ./

RUN pip install -r requirements.txt

COPY heos-scrobbler/heos-track-scrobbler/ ./
