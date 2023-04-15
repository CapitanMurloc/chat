# Primera etapa: Instalar Node.js y las dependencias del proyecto
FROM node:19.9.0-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ../chatSocket/index.html ./index.html
COPY ../chatSocket/server.js ./server.js

EXPOSE 3000

CMD ["node", "server.js"]
