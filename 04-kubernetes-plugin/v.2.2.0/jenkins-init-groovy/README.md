## Executando configuração via Groovy

```sh
$ ./setup-and-run.sh
```

## Gerando uma nova versão

```sh
$ docker build . --tag rafaelbarros/missao-devops-jenkins:2.1.0
```

## Enviando versão para dockerhub

```sh
$ docker push rafaelbarros/missao-devops-jenkins:2.1.0
```
