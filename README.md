# docker-rsync

## Usage

> Help

```sh
docker run --rm sstc/rsync
```

> Version

```sh
docker run --rm sstc/rsync --version
```

> Change entrypint

```sh
docker run --rm --entrypoint=which sstc/rsync rsync
```

> Sync local to local

```sh
LOCAL_PATH=/from/path
DIST_PATH=/to/path
docker run --rm \
-v $LOCAL_PATH:/app \
-v $DIST_PATH:/app_dist \
sstc/rsync \
-av /app/ /app_dist/
```

> Sync local to remote

```sh
LOCAL_PATH=/from/path
REMOTE_PATH=/remote/path
USER=username
HOST=remote.domain.or.ip
PORT=22
docker run --rm \
-v ${LOCAL_PATH}:/app \
-v ~/.ssh:/root/.ssh \
sstc/rsync \
-avz -e "ssh -p${PORT}" /app/ ${USER}@${HOST}:${REMOTE_PATH}/
```

## Q&A

### Bad owner or permissions on /root/.ssh/config

Due to `https://github.com/docker/docker/issues/2259` we can:

1. `-e "ssh -F /dev/null"` to force rsync not read the config.
2. or `-v /root/.ssh:/root/.ssh` mount root config instead!
3. or `-v ~/.ssh/id_rsa:/root/id_rsa` only mount the key file.

## License

[MIT](https://choosealicense.com/licenses/mit/)
