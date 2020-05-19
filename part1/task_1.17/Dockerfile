FROM ubuntu:16.04

RUN apt update && apt install curl git -y
WORKDIR /root
# install stack
RUN curl -sSL https://get.haskellstack.org/ | sh
# create a project so stack install stuff needed to compile projects
RUN stack new temporary
WORKDIR /root/temporary
RUN stack setup
RUN stack build
WORKDIR /root
RUN rm -r temporary
WORKDIR /root/projects
