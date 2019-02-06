FROM node:8-alpine
ENV GREN_VERSION 0.17
RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/chenfli/github-release-notes && \
    cd github-release-notes && \
    npm install && \
    npm install -g gulp && \
    gulp build && \
    alias gren="$(pwd)/bin/gren/node gren-changelog.js" && \
    mkdir -p /git/repo
WORKDIR /git/repo

# npm install github-release-notes@$GREN_VERSION -g && \ 
