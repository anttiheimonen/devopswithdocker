FROM ubuntu:16.04

WORKDIR /webservices
RUN apt update && apt install curl git -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN git clone https://github.com/docker-hy/backend-example-docker
WORKDIR /webservices/backend-example-docker
RUN npm install
EXPOSE 8000
# ENV FRONT_URL "http://frontend:5000"
ENTRYPOINT ["npm", "start"]
