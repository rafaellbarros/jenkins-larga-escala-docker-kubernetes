## Gerando uma nova versão

```sh
$ docker build . --tag rafaelbarros/missao-devops-jenkins:0.3.0
```

## Construíndo o container

```sh
$ docker run --name jenkins-v030 \
    -p 8080:8080 \
    -v jenkins_home_3:/var/jenkins_home \
    -v jenkins_backup_3:/srv/backup \
    rafaelbarros/missao-devops-jenkins:0.3.0
```

## Inspecionando o backup

```sh
$ docker inspect jenkins-v030 | grep backup
```
