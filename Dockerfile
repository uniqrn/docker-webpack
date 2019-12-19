FROM node:buster-slim
MAINTAINER unicorn research ltd.

COPY package.json /root/npm/package.json
WORKDIR /root/npm

RUN npm install

WORKDIR /opt
ENV PATH /root/npm/node_modules/.bin:$PATH
ENV NODE_PATH /root/npm/node_modules
