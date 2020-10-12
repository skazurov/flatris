FROM node

RUN apt-get update && apt-get install -y vim nano

RUN mkdir /flatris
COPY package.json /flatris
WORKDIR /flatris

RUN yarn install

COPY . /flatris

RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000
