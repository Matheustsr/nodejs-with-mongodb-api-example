FROM node:8-alpine

LABEL maintainer="Matheus Vieira"

ADD . src/

WORKDIR /src

RUN npm i -g typescript

RUN npm i

RUN npm run build

CMD npm start