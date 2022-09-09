FROM arm32v7/node:16-buster-slim

WORKDIR /usr/src

COPY heos-scrobbler/heos-track-listener/package.json heos-scrobbler/heos-track-listener/package-lock.json ./

RUN npm install --omit=dev

COPY heos-scrobbler/heos-track-listener/ ./
