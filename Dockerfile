FROM python:3.7-alpine

USER root

#Secret exposed
COPY id_rsa ~/.ssh/id_rsa
##COPY evil /evil

#Virus included
COPY eicar /eicar.txt
#CMD sed 's/999STANDARD/STANDARD' eicar.txt
#CMD sed -i 's/999STANDARD/STANDARD' ~/eicar.txt
#RUN curl https://wildfire.paloaltonetworks.com/publicapi/test/elf -o evil-WF

RUN md5sum /eicar.txt

