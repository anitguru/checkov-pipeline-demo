# Reference: https://www.checkov.io/7.Scan%20Examples/Dockerfile.html
FROM node:alpine
LABEL maintainer="Steve VanAllen <steve@vanallen.family>"
LABEL description="This example Dockerfile installs node."
MAINTAINER Steve VanAllen <steve@vanallen.family>
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000 22
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
CMD ["node","app.js"]
