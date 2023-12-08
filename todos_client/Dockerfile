FROM node:14

WORKDIR /app

COPY ./todos_client/package*.json ./

RUN yarn install

COPY ./todos_client/ .

EXPOSE 3000

CMD ["yarn", "run", "start"]