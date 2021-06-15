FROM docker.io/voidlinux/voidlinux
RUN \
    xbps-install -Suy base-devel git bash; \
    groupadd build; \
    useradd -g build build
COPY container/xbps-src /bin/
USER build:build
WORKDIR /home/build
