FROM fedora:29
RUN dnf install -y \
    nginx \
    net-tools \
    wget \
    iproute \
    iperf3 \
    traceroute \
    iputils \
    wget \
    bind-utils \
    telnet \
    tcpdump \
    && dnf clean all
RUN echo "daemon off;" >> /etc/nginx/nginx.conf


EXPOSE 80

WORKDIR /var/lib/nginx

CMD [ "/usr/sbin/nginx" ]
