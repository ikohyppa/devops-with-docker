FROM ubuntu:18.04

EXPOSE 8080

WORKDIR /usr/src/app/be

RUN apt-get update && \
    apt-get install -y curl && \
    curl -O https://storage.googleapis.com/golang/go1.16.3.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    rm go1.16.3.linux-amd64.tar.gz && \
    useradd -m appuser && \
    chown appuser -hR /usr

USER appuser

COPY . .

ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://localhost
RUN go build

CMD ./server
