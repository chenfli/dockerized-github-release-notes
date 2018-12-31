FROM node:8-alpine
ENV GREN_VERSION 0.17
USER guest
RUN apk add --update git && \
    rm -rf /tmp/* /var/cache/apk/* && \
    npm install github-release-notes@$GREN_VERSION -g && \
    mkdir /git/
VOLUME /git/repo
WORKDIR /git/repo
