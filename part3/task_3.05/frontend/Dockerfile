FROM node:alpine

WORKDIR /home/node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
ENV NODE_ENV=production

RUN apk add --no-cache git && \
  git clone https://github.com/docker-hy/frontend-example-docker ./app && \
  apk del git pcre2 expat && \
  cd app && \
  chown -R node ./

USER node
WORKDIR /home/node/app

RUN npm install
EXPOSE 5000
ENV API_URL "http://localhost:8000"

ENTRYPOINT ["npm", "start"]
