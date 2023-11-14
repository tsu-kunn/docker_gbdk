# devkitpro/devkitarm dcoker image
GBAとNDS(Nitendo DS)の開発環境である `devkitpro/devkitarm` を使用して、GBAとNDSの開発環境を整える。 \
Docker Hub にイメージが公開されているのでそれを使用する。

## ビルド

```bash
$ docker pull devkitpro/devkitarm
```

## サンプルをclone
### GBA

```bash
$ git clone https://github.com/devkitPro/gba-examples.git
```

### NDS
```bash
git clone https://github.com/devkitPro/nds-examples.git
```

## 実行

```bash
$ docker run -it --rm -v `pwd`/:/home/ubuntu/works/ -u ${UID}:$(id -g) devkitpro/devkitarm
```

### サンプルのビルド
docker imageに入ってから `gba-exapmles` or `nds-exapmles` のディレクトリに移動後、 `make -j4` を実行。 \
各サンプルに `.gba` or `.nds` が作成される。

```bash
$ cd nds-examples
$ make -j4
```
