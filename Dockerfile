FROM ubuntu:bionic

LABEL maintainer="Mudit Gupta <hi@mudit.blog>"
LABEL name="solidity-kit"
LABEL version="latest"

ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt install wget curl gnupg software-properties-common apt-utils -y

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN add-apt-repository ppa:ethereum/ethereum

RUN apt update
RUN apt install yarn npm solc git-core unzip -y

RUN curl -L -o solidity-ubuntu-trusty.zip https://github.com/ethereum/solidity/releases/download/v0.4.24/solidity-ubuntu-trusty.zip
RUN unzip solidity-ubuntu-trusty.zip
RUN mv solc /usr/bin/solc

RUN solc --version
RUN nodejs --version
RUN yarn --version
RUN npm --version

RUN npm install truffle -g
RUN truffle version
