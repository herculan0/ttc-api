FROM node:15-alpine

WORKDIR /app

COPY . .

RUN npm install

ENV PORT=80
ENV ORIGIN="http://ttc.herculano.xyz"

EXPOSE 80

ENTRYPOINT ["node", "server.js"]

