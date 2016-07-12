FROM mhart/alpine-node:4

EXPOSE 3000

COPY package.json .
RUN npm install

RUN mkdir /data
VOLUME /data

COPY app.js .

ENTRYPOINT ["node", "app.js"]