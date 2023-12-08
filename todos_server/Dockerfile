FROM node:14
WORKDIR /usr/src/app

COPY ./todos_server/package*.json ./

RUN npm install

COPY ./todos_server/ .

EXPOSE 5000

CMD ["node","app.js"]