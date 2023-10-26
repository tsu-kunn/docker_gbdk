# pspdev dcoker image

## ビルド

```bash
$ docker build -t pspdev .
```

## 実行

```bash
$ docker run -it --rm -v `pwd`/:/home/ubuntu/pspwork/ -u ${UID}:$(id -g) pspdev
```

