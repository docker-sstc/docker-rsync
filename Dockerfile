FROM alpine:3.13.4

RUN apk add --no-cache \
	rsync \
	openssh-client

WORKDIR /app
ENTRYPOINT ["rsync"]