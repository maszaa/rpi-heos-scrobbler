#!/usr/bin/env bash

git submodule init
git submodule update

set -o allexport
source heos-scrobbler/mongo/.env
source heos-scrobbler/redis/.env
set +o allexport

./heos-scrobbler/start.sh
