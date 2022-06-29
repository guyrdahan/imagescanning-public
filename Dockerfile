FROM ubuntu:latest

USER root

#Secret exposed
COPY id_rsa ~/.ssh/id_rsa
##COPY evil /evil

#Virus included
curl https://www.eicar.org/download/eicar.com.txt --output /tmp/eicar.com


