FROM alpine:3.13.2

RUN apk add --no-cache \
	rsync \
	openssh-client

WORKDIR /app
ENTRYPOINT ["rsync"]