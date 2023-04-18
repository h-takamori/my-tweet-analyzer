# my-tweet-analyzer

## 概要

あらかじめダウンロードしたTwitterのアーカイブを分析するためのアプリケーションです。

## 実行方法

実行にはDockerがインストールされている必要があります。
当リポジトリをCloneした後、下記コマンドを実行してください。

```
$ docker compose build
$ docker run -v $PWD/opt:/root/opt -w /root/opt -it --rm -p 8888:8888 my-tweet-analyzer-python3 jupyter-lab --ip 0.0.0.0 --allow-root -b localhost
```

ターミナルに表示された下記URLをブラウザで開きます（token=に続く部分は上記コマンドを実行するたびに変わります）。

http://127.0.0.1:8888/lab?token=************************************************

run.ipynbを開き、そこに書かれた指示に従ってください。