FROM arm32v7/node:10-buster-slim

WORKDIR /usr/src

COPY heos-scrobbler/heos-track-listener/package.json heos-scrobbler/heos-track-listener/package-lock.json ./

RUN npm install

COPY heos-scrobbler/heos-track-listener/ ./
