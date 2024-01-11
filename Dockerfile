FROM node:16-alpine

RUN npm i -g --force yarn

WORKDIR /app

COPY package.json /app/package.json

RUN yarn install

COPY . .

EXPOSE 4000

CMD [ "node", "index.js" ]
