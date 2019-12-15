FROM ubuntu:18.04

#Install Open JDK 11

RUN apt-get update \
    && apt-get -y install openjdk-11-jdk wget libgtk-3-dev\
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH

RUN wget -nv http://www.cs.brown.edu/people/spr/bubbles/bubbles.jar

RUN wget -nv -O eclipse-4.9.tar.gz "http://mirror.math.princeton.edu/pub/eclipse/technology/epp/downloads/release/2019-09/R/eclipse-java-2019-09-R-linux-gtk-x86_64.tar.gz"

WORKDIR /opt

RUN tar -zxf /eclipse-*.tar.gz

WORKDIR /opt/eclipse

CMD /bin/bash
