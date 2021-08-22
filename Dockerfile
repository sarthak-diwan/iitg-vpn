FROM ubuntu:18.04
WORKDIR /root/
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Kolkata \
    apt-get install -y expect net-tools iproute2 ipppd iptables iputils-ping
COPY ./forticlientsslvpn /root/vpn/
COPY ./gost /root/
COPY ./run.sh /root/
RUN mknod /dev/ppp c 108 0
COPY ./entrypoint.sh /root/entrypoint.sh
CMD [ "/root/entrypoint.sh" ]