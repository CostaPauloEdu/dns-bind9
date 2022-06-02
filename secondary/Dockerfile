#Download latest image of Debian
FROM ubuntu:latest

#Author
LABEL maintener="Paulo Eduardo Azevedo da Costa"

#Update and install bind9 (and others components)
RUN apt-get update \
  && apt-get install -y \
  bind9 \
  bind9utils \
  bind9-doc \
  nano \
  dnsutils \
  iputils-ping \
  procps

# Copy configuration files
COPY named.conf.default-zones /etc/bind/
COPY named.conf.options /etc/bind/
COPY db.root /etc/bind/

# Start bind9 service
CMD /bin/bash -c /usr/sbin/named && while :; do sleep 10; done