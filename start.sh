#!/usr/bin/env bash

git submodule init
git submodule update

./heos-scrobbler/start.sh
