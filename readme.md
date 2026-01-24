# できること
trapdoor-ll入りのサーバーを自動で構築
# quick start
## 初回起動
~~~
docker run --network host -it --dns 1.1.1.1 bds
~~~
自動でコンテナの中に入り、セットアップが進みます。初回は自動でサーバーも起動します。

## 停止
コンテナに入っている状態で stop でサーバーが停止、exitでコンテナを停止しコンテナから脱出します。
## 2回目からの起動

### 止めているコンテナも含めて名前をすべて表示
~~~
docker ps -a
~~~
### 止めたコンテナを起動する
~~~
docker start コンテナ名
~~~
### コンテナに入る
~~~
docker container exec -it コンテナ名 bash
~~~
### minecraftのサーバーを起動
~~~
wine bedrock_server_mod.exe
~~~