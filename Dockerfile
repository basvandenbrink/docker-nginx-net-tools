FROM nginx:alpine
RUN apk add --update --no-cache \
    curl \
    wget \
    bind-tools \
    net-tools \
    nginx \
    netcat-openbsd \
    busybox-extras

EXPOSE 80
