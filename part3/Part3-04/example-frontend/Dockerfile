FROM ubuntu:18.04

EXPOSE 5000

WORKDIR /usr/src/app/fe

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get install -y nodejs && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m appuser && \
    chown appuser -hR /usr

USER appuser

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost

RUN npm install && \ 
    npm install -g serve && \
    npm run build

CMD serve -s -l 5000 build
