FROM node:latest

WORKDIR /app

COPY package.json /app/package.json

RUN yarn install

COPY . .

CMD [ "node", "index.js" ]

EXPOSE 4000
