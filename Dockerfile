FROM node:latest

RUN apk add --no-cache bash

RUN npm i -g --force yarn

WORKDIR /app

COPY package.json /app/package.json

RUN yarn install

COPY . .

CMD [ "node", "index.js" ]

EXPOSE 4000
