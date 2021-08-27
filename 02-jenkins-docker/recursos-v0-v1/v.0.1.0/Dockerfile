FROM jenkins/jenkins:2.303.1
USER root
RUN apt-get update && apt-get install -y make git openjdk-11-jdk
USER jenkins
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64