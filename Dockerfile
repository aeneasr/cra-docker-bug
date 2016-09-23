FROM node:6.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install --silent; exit 0

# fix for https://github.com/facebookincubator/create-react-app/issues/508
RUN chmod a+x /usr/src/app/node_modules/.bin/react-scripts

ENTRYPOINT npm start

EXPOSE 3000