FROM ubuntu:18.04

RUN apt-get update && apt-get install git -y
RUN apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable" && \
  apt-get update && \
  apt-get install -y docker-ce docker-ce-cli containerd.io
WORKDIR /app
COPY ./script.sh ./
RUN chmod a+x /app/script.sh
ENTRYPOINT [ "./script.sh" ]