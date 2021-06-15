FROM docker.io/voidlinux/voidlinux
ENV LANG=en_US.UTF-8
# COPY container/locale.conf /etc/locale.conf
RUN \
    xbps-install -Suy tmux ncurses-term base-devel git bash; \
    groupadd build; \
    useradd -g build build
COPY container/xbps-src /bin/
COPY container/libc-locales /etc/default/libc-locales
RUN xbps-reconfigure -f glibc-locales
USER build:build
WORKDIR /home/build
