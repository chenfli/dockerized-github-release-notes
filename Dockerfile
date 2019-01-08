FROM node:9-alpine
ENV GREN_VERSION 0.17
RUN npm install github-release-notes@$GREN_VERSION -g && \
    mkdir -p /git/repo
WORKDIR /git/repo
