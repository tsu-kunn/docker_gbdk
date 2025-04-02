# docker_gbdk
GB開発環境の `gbdk2.96` と `gbdk-2020` をラズパイで動作するdocker imageを作成します。

## gbdk
GB開発環境 [gbdk-2.96 for Raspberry Pi](https://cubic-style.jp/gbdev/) の docker image を作成します。\
2018年と古い開発環境ですが、SDKを展開するだけなのでイメージの作成が速く容量が少ないです。

## gbdk2020
GB開発環境 [gbdk-2020](https://github.com/gbdk-2020/gbdk-2020) の docker image を作成します。\
公式の配布は Linux for x64 のものしかないため、QEMUを使ってx86_64をエミュレートしてビルドします。 \
そのためビルドに時間がかかります。

ネイティブビルドする場合はSDKをビルドする必要があるのですが、パッチをARM向けに当てる方法が分からなくて断念。 \
やり方分かる方いましたら教えてください…。

## その他
今さらGBの開発といわれそうですが、Raspbyrry Pi 4B を活用したいのとプログラミングしたい欲求を満たすのに、\
一番思い入れがあり、一番遊んだハードを選びました。未だにHomebrewに動きがあるのも決めての一つ。\
高校時代にポケコンでZ80を少し触ってたのと、仕事でDSの開発をしてたので2Dハードの知識があるのも選択の決め手。

でもゲームが作りたいわけではないので、モチベーションが続くか不安。

## pspdev
せっかく作ったのでここに追加。（おまけ） \
PSPの開発環境を作成するDockerfile。SDKを一からビルドするため時間がかかります。 \
またDocker Imageサイズも5GB弱となるので、microSDのサイズが小さい場合は注意が必要。 \
Docker Image作成で満足してしまい、サンプルビルドまでは試してないので不足があるかも？

## gba_nds
GBA/NDSの開発環境どんなものなんだろうと調べていたら、docker imageが公開されており、 \
簡単に環境構築ができたのでそのメモを追加。

サンプルなどは [devkitPro](https://github.com/devkitPro) にあります。 \
docker image の情報は [ここ](https://hub.docker.com/r/devkitpro/devkitarm) 。

## wiidev
Wiiの開発環境どんなものなんだろうと調べていたら、docker imageが公開されており、 \
簡単に環境構築ができたのでそのメモを追加。

サンプルは [wii-examples](https://github.com/devkitPro/wii-examples) にあります。 \
docker image の情報は [ここ](https://hub.docker.com/r/devkitpro/devkitppc) 。 \
homebrew の情報は [Wii BREW](https://wiibrew.org/wiki/Main_Page)を参照。
