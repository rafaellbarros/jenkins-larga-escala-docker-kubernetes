## Gerando uma nova versão

```sh
$ docker build . --tag rafaelbarros/missao-devops-jenkins:0.2.0
```

## Construíndo o container

```sh
$ docker run --name jenkins-v020 -p 8080:8080 rafaelbarros/missao-devops-jenkins:0.2.0
```
