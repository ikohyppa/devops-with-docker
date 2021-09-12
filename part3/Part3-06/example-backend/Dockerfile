FROM golang:1.16.3-alpine3.13 as build-stage

WORKDIR /usr/src/app/be

RUN adduser -D appuser && \
    chown appuser -hR /usr

USER appuser

COPY . .

ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://localhost

RUN export CGO_ENABLED=0 && go build


FROM scratch

COPY --from=build-stage /usr/src/app/be/server /go/bin/server
COPY --from=build-stage /etc/passwd /etc/passwd

USER appuser

EXPOSE 8080

ENTRYPOINT ["/go/bin/server"]