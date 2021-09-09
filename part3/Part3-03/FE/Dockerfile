FROM ubuntu:18.04

EXPOSE 5000

WORKDIR /usr/src/app/fe

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs
RUN useradd -m appuser
RUN chown appuser -hR /usr

USER appuser

COPY . .

RUN npm install

RUN npm install -g serve

ENV REACT_APP_BACKEND_URL=http://localhost

RUN npm run build

CMD serve -s -l 5000 build
