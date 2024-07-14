FROM alpine:3.19

RUN apk add --no-cache \
	rsync \
	openssh-client \
	sshpass

WORKDIR /app
ENTRYPOINT ["rsync"]
