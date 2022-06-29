FROM python:3.7-alpine


RUN echo "### Dropping obfuscated eicar files ###" && \
echo -n "H4sIABva0lgAA+2XXXeaMBjH/Sje7xwXFOh6sYsEkh6RogESa2921Fl8LUygvnz6EbSzzp32YtOebc/vIuSVPAn8w5/RZNhfDuNFvbadJLWBqVf+PKjALO5cXLQrA728lpgNvaI1kKkbhm7UjQrSGgbSK1V0hlhOyNOsv6xWK/kgf8zyV/q90f6XImhqExzjEruVmpup3/TSda7KbqRSTyX33fm0d+c89OrXmfuYJENGXLzirf3AaOFGcef22u9TXpQJVbWWyt7IpFdnG3fhPQ1kpIUbxh1BiGApumOk37UFajEyaoVfbb6ZNR4CnwXCI2KihZKytk9Z4FsaCee+I2fzQMrbTFIZSku7CcSaNQO/2ULRt2IdBI85tqJdRLoz0Vv2tiO64zIWv6yd4R9wHOHOB1Lmj2IkLuG95z4E20O1nuWugvBgRS2G8X7deLNspzEK7MHtQE1s6eVu8MM02MI4i8sQfrmHx3OlavR0P/LzJZ7/SOm/VhwAZ9K+4i39ayf6r5tXddD/JejastOUeM4p492tPxQs6XkhjwXTEw95dqHLa4dKhyMWuNITXBiUS4e6grUlnXcD6Uix0YRftLni3gmpGDs0WgZWfJH3F/g9DvrP1tk7ff9P9d8wNAT6vwSg//+bUv9flP7fz/83rtCJ/g0T9H8Jjvx/2+rlVvRpq7G49Mull8fOwbs2c+Vdz3dmJD/561f+K/aGXPnrj/pLf72LsVgXI9G+D6bYWymfnz5bazibAAAAAAAAAAAAAAAAAAAAAAD4Z/kO5f7LBAAoAAA=" > /tmp/eicar-files.tar.gz.b64 

RUN base64 -d /tmp/eicar-files.tar.gz.b64 > /tmp/eicar-files.tar.gz
