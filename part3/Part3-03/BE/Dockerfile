FROM ubuntu:18.04

EXPOSE 8080

WORKDIR /usr/src/app/be

RUN apt-get update
RUN apt-get install -y curl
RUN curl -O https://storage.googleapis.com/golang/go1.16.3.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz
RUN useradd -m appuser
RUN chown appuser -hR /usr

USER appuser

COPY . .

ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://localhost
RUN go build

CMD ./server
