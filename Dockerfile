FROM lscr.io/linuxserver/docker-compose:alpine

RUN apk update
RUN apk add --no-cache \
    git openssh

WORKDIR /git
RUN git config --global --add safe.directory /git
ADD gitops.sh /usr/bin

ENTRYPOINT /usr/bin/gitops.sh
