FROM alpine:3.15

RUN apk add --no-cache \
	rsync \
	openssh-client

WORKDIR /app
ENTRYPOINT ["rsync"]
