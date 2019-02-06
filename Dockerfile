FROM node:8-alpine
ENV GREN_VERSION 0.17
RUN pwd && apk update && \
    apk add git && \
    git clone https://github.com/chenfli/github-release-notes && \
    cd github-release-notes && \
    npm install && \
    npm install -g gulp && \
    gulp build && \
    ls -ltR && \
    mkdir -p /git/repo
WORKDIR /git/repo

# npm install github-release-notes@$GREN_VERSION -g && \ 
