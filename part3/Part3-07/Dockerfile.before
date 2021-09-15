FROM ubuntu:18.04

EXPOSE 3000

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs

COPY . .

RUN npm install

RUN npm install -g serve

RUN npm run build

CMD serve -s -l 5000 build