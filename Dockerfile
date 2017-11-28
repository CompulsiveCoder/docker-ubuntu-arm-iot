FROM compulsivecoder/ubuntu-arm-dev-base

ARG DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get -y install python && rm -rf /var/lib/apt/lists/*

RUN python -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)"
