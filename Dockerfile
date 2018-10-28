FROM node:8-alpine
ENV GREN_VERSION 0.13.1
RUN apk add --update git && \
    rm -rf /tmp/* /var/cache/apk/* && \
    npm install github-release-notes@$GREN_VERSION -g

ENTRYPOINT ["gren"]
