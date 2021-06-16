FROM alpine:3.14.0

RUN apk add --no-cache \
	rsync \
	openssh-client

WORKDIR /app
ENTRYPOINT ["rsync"]