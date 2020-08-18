FROM node:alpine

WORKDIR /home/node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

RUN apk add --no-cache git && \
  git clone https://github.com/docker-hy/backend-example-docker.git ./app && \
  apk del git && \
  cd app && \
  chown -R node ./

USER node
WORKDIR /home/node/app

RUN npm install
EXPOSE 8000
ENV FRONT_URL "http://localhost:5000"

ENTRYPOINT ["npm", "start"]
