FROM python:3.10-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /music-xdl
WORKDIR /music-xdl
COPY songdl /songdl
#CMD ["/bin/bash", "songdl"]
