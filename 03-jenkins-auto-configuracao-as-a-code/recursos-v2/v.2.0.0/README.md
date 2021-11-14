## Executando configuração via Groovy

```sh
$ ./setup-and-run.sh
```

## Convertendo plugins.txt para dependecies.txt

```sh
$ awk -v prefix="implementation 'org.jenkins-ci.plugins:" -v postfix="'" '{print prefix $0 postfix}' plugins.txt > dependencies.txt
```

## Gerando uma nova versão

```sh
$ docker build . --tag rafaelbarros/missao-devops-jenkins:2.0.0
```

## Enviando versão para dockerhub

```sh
$ docker push rafaelbarros/missao-devops-jenkins:2.0.0
```
