# pspdev dcoker image

## ビルド

```bash
$ docker build -t pspdev .
```

## 実行

```bash
$ docker run -it --rm -v `pwd`/:/home/ubuntu/pspwork/ -u ${UID}:$(id -g) pspdev
```

## スクリプトで実行
docker image の中に入って `make` を実行するのではなく、スクリプトを使って `make` を実行する。 \
`docker-pspdev.sh` をパスが通っているディレクトリにコピーするか、参照して実行する。

### 実行例

```bash
$ ~/docker_gbdk/pspdev/docker-pspdev.sh make
```
