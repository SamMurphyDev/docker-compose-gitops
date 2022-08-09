FROM lscr.io/linuxserver/docker-compose:alpine

RUN apk add --no-cache \
    git

WORKDIR /git
ADD gitops.sh /usr/bin

ENTRYPOINT /usr/bin/gitops.sh
