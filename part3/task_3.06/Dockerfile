FROM node:alpine as builder

WORKDIR /home/node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
ENV NODE_ENV=production

RUN apk add --no-cache git && \
  git clone https://github.com/docker-hy/frontend-example-docker ./app && \
  apk del git pcre2 expat && \
  cd app && \
  chown -R node ./

WORKDIR /home/node/app
RUN npm install
RUN npm run build

FROM node:alpine

COPY --from=builder /home/node/app/dist /home/node/app/dist

USER node
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
ENV NODE_ENV=production
EXPOSE 5000
# ENV API_URL "http://localhost:8000"
RUN npm install -g serve
WORKDIR /home/node/app
ENTRYPOINT ["serve", "-s", "-l", "5000", "dist"]