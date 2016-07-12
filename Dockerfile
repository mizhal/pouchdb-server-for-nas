FROM mhart/alpine-node:4

COPY package.json .
RUN npm install
