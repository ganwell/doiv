FROM docker.io/voidlinux/voidlinux
RUN \
    xbps-install -Suy base-devel git bash; \
    groupadd build; \
    useradd -g build build
USER build:build
WORKDIR /home/build
