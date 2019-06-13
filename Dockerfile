FROM nginx:alpine
RUN apk add --update --no-cache \
    curl \
    wget \
    bind-tools \
    net-tools \
    iproute2 \
    netcat-openbsd \
    busybox-extras \
    iperf3 \
    tcpdump

EXPOSE 80
