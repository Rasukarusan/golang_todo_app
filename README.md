# Golang Todo App
TODO Web Application with AUTH by Go.


![gazou](http://books.google.com/books/content?id=bgQyzwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api.jpg)  
[詳解Go言語Webアプリケーション開発](https://www.amazon.co.jp/dp/4863543727)

# Start

```sh
make build-local
make up

# health check
$ curl localhost:18000/health
{"status": "ok"}%
```

# Help

```sh
$ make help
build                Build docker image to deploy
build-local          Build docker image to local development
exec                 Do docker exec
up                   Do docker compose up with hot realod
down                 Do docker compose down
logs                 Do docker compose logs
ps                   Check container status
test                 Execute tests
help                 Display this help screen
```
