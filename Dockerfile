FROM node:10-alpine

WORKDIR /back

COPY source_code/package*.json ./

COPY source_code/server.js ./

RUN npm install
 
COPY . .

EXPOSE 4000

CMD ["node", "server.js"]
