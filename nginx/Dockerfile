FROM ubuntu:latest as builder
WORKDIR /data
ADD ./nginx-1.25.4.tar.gz /data
RUN apt update  \
    && apt -y install gcc make pcre2-utils libpcre2-dev zlib1g-dev \
    && cd ./nginx-1.25.4 \
    && ./configure --prefix=/data/nginx-bin \
    --with-debug \
    && make \
    && make install

FROM ubuntu:latest
WORKDIR /data
COPY --from=builder /data/nginx-bin /data/nginx-bin
RUN echo net.ipv4.tcp_syncookies = 0 >>/etc/sysctl.conf \
    &&sysctl -p
ADD html /data/nginx-bin/html
EXPOSE 80
CMD /data/nginx-bin/sbin/nginx -g "daemon off;"