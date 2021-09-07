FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY myscript.sh .
RUN chmod +x myscript.sh
RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get install -y curl
RUN curl -sSL https://get.docker.com/ | sh

ENV REPO_ADDRESS repo_address
ENV REPO_NAME repo_name
ENV DH_USER docker_hub_husername
ENV DH_PW docker_hub_pw

ENTRYPOINT ./myscript.sh ${REPO_ADDRESS} ${REPO_NAME} ${DH_USER} ${DH_PW}