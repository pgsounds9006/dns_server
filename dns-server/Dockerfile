FROM ubuntu:22.04

RUN apt-get update && apt-get install -y bind9 bind9utils dnsutils && \
    rm -rf /var/lib/apt/lists/*

COPY ./config/ /etc/bind/

EXPOSE 53/tcp 53/udp

CMD ["named", "-g", "-c", "/etc/bind/named.conf"]