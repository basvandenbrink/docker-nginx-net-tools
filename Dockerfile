FROM fedora:28
RUN dnf -y update
RUN dnf install nginx net-tools wget iproute iperf3 traceroute iputils wget bind-utils telnet -y && dnf clean all
RUN echo "daemon off;" >> /etc/nginx/nginx.conf


EXPOSE 80

WORKDIR /var/lib/nginx

CMD [ "/usr/sbin/nginx" ]
