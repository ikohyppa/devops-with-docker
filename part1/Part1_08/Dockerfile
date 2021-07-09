FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY website.sh .

RUN chmod +x website.sh

RUN apt-get update && apt-get install -y curl

CMD ./website.sh