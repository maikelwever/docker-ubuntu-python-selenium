FROM ubuntu:trusty
MAINTAINER Maikel Wever <maikelwever@gmail.com>

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y chromium-webdriver xvfb python3 python3-pip python3-dev libpq-dev

ADD sudoers /etc/sudoers
ADD xfvb_init /etc/init.d/xvfb
RUN chmod 0400 /etc/sudoers
RUN chmod 0700 /etc/init.d/xvfb
