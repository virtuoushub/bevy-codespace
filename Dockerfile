FROM rust@sha256:0dd183faf7bc5b9b8efe81cfd42701a5283577520b185b511e322e5bf52f8fc7

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -yq upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq g++ pkg-config libx11-dev libasound2-dev libudev-dev libxkbcommon-x11-0

