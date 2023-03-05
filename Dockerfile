FROM node:12 

ENV YARN_VERSION 1.22.17

WORKDIR /usr/app

COPY . .

RUN yarn

# COPY client/ ./client/

RUN yarn install

RUN yarn build

EXPOSE 3000

CMD ["yarn","start"]

