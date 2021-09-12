FROM node:14-alpine3.13

EXPOSE 5000

WORKDIR /usr/src/app/fe

RUN adduser -D appuser
RUN chown appuser -hR /usr

USER appuser

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost

RUN npm install && \ 
    npm install -g serve && \
    npm run build

CMD serve -s -l 5000 build
