# docker-rsync

## Usage

- Help: `docker run --rm sstc/rsync`
- Version: `docker run --rm sstc/rsync --version`
- which: `docker run --rm --entrypoint=which sstc/rsync rsync`
- rsync local to local
```sh
LOCAL_PATH=/from/path
DIST_PATH=/to/path
docker run --rm \
-v $LOCAL_PATH:/app \
-v $DIST_PATH:/app_dist \
sstc/rsync \
-av /app/ /app_dist/
```

- rsync local to remote
```sh
LOCAL_PATH=/from/path
REMOTE_PATH=/remote/path
PORT=22
docker run \
--rm \
-v ${LOCAL_PATH}:/app \
-v ~/.ssh:/root/.ssh \
sstc/rsync \
-avzz -e "ssh -p${PORT}" /app/ username@remote.domain:${REMOTE_PATH}/
```

[alpine]:https://hub.docker.com/_/alpine/
