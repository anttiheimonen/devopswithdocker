FROM ubuntu:16.04

WORKDIR /webservices
RUN apt update && apt install curl git -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN git clone https://github.com/docker-hy/frontend-example-docker
WORKDIR /webservices/frontend-example-docker
RUN npm install
EXPOSE 5000
ENV API_URL "http://localhost:8000"
ENTRYPOINT ["npm", "start"]
