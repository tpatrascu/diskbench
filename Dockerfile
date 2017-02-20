FROM ubuntu:latest

ARG http_proxy
ARG https_proxy

# system utilities
RUN apt-get update && apt-get -y install screen tmux telnet net-tools iputils-ping iproute iotop iptraf tshark sysstat tcpdump
# benchmark tools
RUN apt-get update && apt-get -y install fio sysbench mysql-client

RUN touch /bench.log && chmod 777 /bench.log

USER 888

CMD ["tail", "-f", "/bench.log"]