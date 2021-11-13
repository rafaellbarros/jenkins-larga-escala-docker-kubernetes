#!/usr/bin/env bash

dockerhub_user=rafaelbarros

jenkins_port=8080
image_name=missao-devops-jenkins
image_version=2.0.0
container_name=md-jenkins

docker pull jenkins/jenkins:2.308

if [ ! -d downloads ]; then
    mkdir downloads
    cd downloads
    wget -c https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u302-b08/OpenJDK8U-jdk_x64_linux_hotspot_8u302b08.tar.gz -O openjdk-8u302_linux-x64.tar.gz
    wget -c https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.12%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.12_7.tar.gz -O openjdk-11.0.12_linux-x64.tar.gz 
    wget -c http://mirror.vorboss.net/apache/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz -O apache-maven-3.5.4.tar.gz
    cd ..
fi

docker stop ${container_name}
docker build --no-cache -t ${dockerhub_user}/${image_name}:${image_version} .

if [ ! -d m2deps ]; then
    mkdir m2deps
fi
if [ -d jobs ]; then
    rm -rf jobs
fi
if [ ! -d jobs ]; then
    mkdir jobs
fi

docker run -p ${jenkins_port}:8080 \
    -v `pwd`/downloads:/var/jenkins_home/downloads \
    -v `pwd`/jobs:/var/jenkins_home/jobs/ \
    -v `pwd`/m2deps:/var/jenkins_home/.m2/repository/ \
    -v $HOME/.ssh:/var/jenkins_home/.ssh/ \
    --rm --name ${container_name} \
    ${dockerhub_user}/${image_name}:${image_version}