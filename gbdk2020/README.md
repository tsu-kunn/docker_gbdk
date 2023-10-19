# gbdk2020 dcoker image
ARMネイティブビルドの環境は諦めて、QEMUでx86_64をエミュレートすることにしました。 \
ビルド時間かかるけど解決方法が分かるまでは時間でカバーする。

## QEMUのインストール
```bash
$ sudo apt install -y qemu-user-static
```

## ビルド

```bash
$ docker build -t gbdk2020 .
```

## 実行

```bash
$ docker run -it --rm -v `pwd`/:/home/ubuntu/gbwork/ -u ${UID}:$(id -g) gbdk2020
```

### サンプルのビルド
docker imageに入ってから以下を実行。

```bash
$ cd /opt/gbdk/examples/gb
$ make -j4
```
