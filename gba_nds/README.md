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

## スクリプトで実行
docker image の中に入って `make` を実行するのではなく、スクリプトを使って `make` を実行する。 \
`docker-devkitpro.sh` をパスが通っているディレクトリにコピーするか、参照して実行する。

### 実行例

```bash
$ cd Graphics/3D/Textured_Cube/
$ ~/docker_gbdk/gba_nds/docker-devkitpro.sh make
```
