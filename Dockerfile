FROM python:3.7-alpine


RUN echo "### Dropping obfuscated eicar files ###" && \
echo -n "X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*" > /tmp/eicar-files.com


