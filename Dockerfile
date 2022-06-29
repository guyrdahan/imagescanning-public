FROM ubuntu:latest

USER root

#Secret exposed
COPY id_rsa ~/.ssh/id_rsa
##COPY evil /evil

RUN apt update && apt install -y curl && rm -rf /var/lib/apt/lists/*

#Virus included
RUN curl https://www.eicar.org/download/eicar.com.txt --output /tmp/eicar.com


