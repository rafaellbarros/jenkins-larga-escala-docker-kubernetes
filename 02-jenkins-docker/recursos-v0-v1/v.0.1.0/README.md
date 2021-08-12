## Construíndo a imagem
```sh
$ docker build . --tag rafaelbarros/missao-devops-jenkins:0.1.0
```

## Construíndo o container
```sh
$ docker run --name jenkins-v010 -p 8080:8080 rafaelbarros/missao-devops-jenkins:0.1.0
```

## Consultando logs do container
```sh
$ docker logs jenkins-v010
$ docker logs {4 primeiros digitos do id}
```

## Deletandoo container
```sh
$ docker rm jenkins-v010
```