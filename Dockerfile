FROM alpine:3.18

RUN apk add --no-cache \
	rsync \
	openssh-client \
	sshpass

WORKDIR /app
ENTRYPOINT ["rsync"]
