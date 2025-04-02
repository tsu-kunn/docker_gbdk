# devkitpro/devkitppc dcoker image
Wiiの開発環境である `devkitpro/devkitppc` を使用して、Wiiの開発環境を整える。 \
Docker Hub にイメージが公開されているのでそれを使用する。

## ビルド

```bash
docker pull devkitpro/devkitppc
```

## サンプルをclone
### https
```bash
git clone https://github.com/devkitPro/wii-examples.git
```

### SSH
```bash
git clone git@github.com:devkitPro/wii-examples.git
```

## 実行

```bash
docker run -it --rm -v `pwd`/:/home/ubuntu/works/ -u ${UID}:$(id -g) devkitpro/devkitppc
```

### サンプルのビルド
docker imageに入ってから `wii-examples` のディレクトリに移動後、 `make -j4` を実行。 \
各サンプルに `.gba` が作成される。

```bash
$ cd nds-examples
$ make -j4
```

## スクリプトで実行
docker image の中に入って `make` を実行するのではなく、スクリプトを使って `make` を実行する。 \
`docker-devkitppc.sh` をパスが通っているディレクトリにコピーするか、参照して実行する。

### 実行例

```bash
$ cd wii-examples/graphics/gx
$ ~/docker_gbdk/docker-devkitppc.sh make
```
