## Gerando uma nova versão

```sh
$ docker build . --tag rafaelbarros/missao-devops-jenkins:0.4.0
```

## Construíndo o container

```sh
$ docker run --name jenkins-v040 \
    -p 8080:8080 \
    -v jenkins_home_4:/var/jenkins_home \
    -v jenkins_backup_4:/srv/backup \
    rafaelbarros/missao-devops-jenkins:0.4.0
```

## Inspecionando o backup

```sh
$ docker inspect jenkins-v040 | grep backup
```
