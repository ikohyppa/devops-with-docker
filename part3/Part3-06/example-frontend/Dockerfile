FROM node:14-alpine3.13 as build-stage

WORKDIR /usr/src/app/fe

RUN adduser -D appuser && \
    chown appuser -hR /usr

USER appuser

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost

RUN npm install && \
    npm run build



FROM node:14-alpine3.13

WORKDIR /usr/src/app/fe

RUN adduser -D appuser && \    
    chown appuser -hR /usr

USER appuser

COPY --from=build-stage /usr/src/app/fe/build ./build

EXPOSE 5000

RUN npm install -g serve

CMD serve -s -l 5000 build
