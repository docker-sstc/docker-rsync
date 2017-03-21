FROM alpine:3.5

RUN apk add --no-cache \
    rsync \
    openssh-client

ENTRYPOINT ["rsync"]