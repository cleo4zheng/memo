FROM centos:latest

RUN  rm -rf /etc/yum.repos.d/*
COPY *.repo /etc/yum.repos.d/
RUN  yum install java -y
COPY microservice-1.0.jar /home/

ENV HOME /root
CMD java -jar /home/microservice-1.0.jar >> /dev/null
