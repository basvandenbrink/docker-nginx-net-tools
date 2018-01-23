FROM fedora:27
RUN dnf -y update && dnf clean all
RUN dnf install nginx net-tools wget iproute iperf3 traceroute iputils wget -y && dnf clean all
RUN echo "daemon off;" >> /etc/nginx/nginx.conf


EXPOSE 80

WORKDIR /var/lib/nginx

CMD [ "/usr/sbin/nginx" ]
