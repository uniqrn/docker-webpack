FROM uniqrn/node:12
LABEL maintainer "unicorn research Ltd"

### add packages
COPY package.json /root/npm/package.json
WORKDIR /root/npm

RUN npm install \
    && ln -s /root/npm/node_modules /node_modules

WORKDIR /opt
ENV PATH /root/npm/node_modules/.bin:$PATH
ENV NODE_PATH /root/npm/node_modules
