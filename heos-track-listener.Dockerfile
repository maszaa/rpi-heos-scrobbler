FROM arm32v7/node:12-buster-slim

WORKDIR /usr/src

COPY heos-scrobbler/heos-track-listener/package.json heos-scrobbler/heos-track-listener/package-lock.json ./

RUN npm install --only=production

COPY heos-scrobbler/heos-track-listener/ ./
