#FROM node:9-slim
FROM alpine:latest
RUN apk add --no-cache nodejs npm

WORKDIR /app/

COPY package*.json /app/

RUN npm install

COPY . /app/

EXPOSE 3001

CMD ["node", "index.js"]