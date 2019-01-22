FROM node:alpine
MAINTAINER unicorn research ltd.

RUN apk --no-cache add bash
RUN npm install -g webpack -g webpack-cli
