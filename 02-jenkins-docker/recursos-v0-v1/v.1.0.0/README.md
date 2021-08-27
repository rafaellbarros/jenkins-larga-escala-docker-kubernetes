## Gerando uma nova versão

```sh
$ docker build . --tag rafaelbarros/missao-devops-jenkins:1.0.0 --tag rafaelbarros/missao-devops-jenkins:latest
```

## Construíndo o container

```sh
$ docker run --name docker-jenkins \
    -p 8080:8080 \
    -v jenkins_home:/var/jenkins_home \
    -v jenkins_backup:/srv/backup \
    rafaelbarros/missao-devops-jenkins
```

## Inspecionando o backup

```sh
$ docker inspect docker-jenkins | grep backup
```
