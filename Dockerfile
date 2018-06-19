FROM nginx:alpine
RUN apk add --update \
    curl \
    wget \
    bind-tools \
    net-tools \
    nginx \
    netcat-openbsd \
    busybox-extras \
    && rm -rf /var/cache/apk/*

EXPOSE 80
