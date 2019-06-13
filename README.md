# jupyternotebook_docker_image
jupyternotebook設定用のdocker-compose ファイル

## docker commands
```
docker run -it -p 8080:8080 heroku/heroku:16 /bin/bash

docker build -t test-image .
docker run --name test-container -d -p 8080:8080 test-image
docker rm `docker ps -a -q`

docker images -aq | xargs docker rmi
```


## docker-compose
### 初回起動
```
# foregroundで起動
docker-compose up

# backgroundで起動
docker-compose up -d
```


### 停止
```
# foregroundで起動していた場合
## Ctr + C

# backgroundで起動していた場合
docker-compose stop
```


### 再起動 or 実装変更を反映させる
```
# foregroundで起動していた場合
docker-compose up

# backgroundで起動していた場合
docker-compose restart
```


### 停止＆削除（コンテナ・ネットワーク）
```
docker-compose down
```


### 停止＆削除（コンテナ・ネットワーク・イメージ）
```
docker-compose down --rmi all
```


### コンテナ一覧(docker-compose)
```
$ docker-compose ps
```

### イメージ一覧(docker-compose)
```
$ docker-compose images
```
