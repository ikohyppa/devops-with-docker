FROM golang:1.16.3-alpine3.13

EXPOSE 8080

WORKDIR /usr/src/app/be

RUN adduser -D appuser
RUN chown appuser -hR /usr

USER appuser

COPY . .

ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://localhost
RUN go build

CMD ./server
