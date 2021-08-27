FROM jenkins/jenkins:2.303.1
USER root
RUN apt-get update && apt-get install -y make git openjdk-11-jdk
USER jenkins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64