# gbdk dcoker image

## ビルド

```bash
$ docker build -t gbdk .
```

## 実行

```bash
$ docker run -it --rm -v `pwd`/:/home/ubuntu/gbwork/ -u ${UID}:$(id -g) gbdk
```

