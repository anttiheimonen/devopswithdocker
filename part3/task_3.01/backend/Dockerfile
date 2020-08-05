FROM ubuntu:16.04

ENV LC_ALL=C.UTF-8

WORKDIR /webservices

RUN apt update && apt install curl git -y && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker && \
    cd backend-example-docker && \
    npm install && \
    apt-get purge -y --auto-remove curl git && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /usr/share/man/* && \
    rm -rf /usr/share/doc/*

WORKDIR /webservices/backend-example-docker
# RUN npm install
EXPOSE 8000
# ENV FRONT_URL "http://frontend:5000"
ENTRYPOINT ["npm", "start"]
