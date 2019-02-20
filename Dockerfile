FROM nginx:alpine
RUN apk add --update --no-cache \
    curl \
    wget \
    bind-tools \
    net-tools \
    netcat-openbsd \
    busybox-extras \
    iperf3 \
    tcpdump
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80
