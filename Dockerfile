FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python-pip
RUN pip install shadowsocks

ENV PASSWORD password

EXPOSE 8388

ENTRYPOINT ssserver -p 8388 -k ${PASSWORD} -m aes-256-cfb
