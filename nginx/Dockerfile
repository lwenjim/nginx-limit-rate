FROM ubuntu:latest as builder
WORKDIR /data
RUN apt-get update  \
    &&tar -zxvf nginx-1.25.4.tar.gz  \
    &&apt install gcc make pcre2-utils libpcre2-dev zlib1g-dev \
    &&./configure --prefix=/data/nginx-bin \
    &&make&&make install \
    &&rm -rf nginx-1.25.4

FROM alpine:latest
WORKDIR /app
COPY --from=builder /data/nginx-bin /app/
EXPOSE 80
CMD ["/data/nginx-bin/sbin/nginx" "-g" "daemon off;"]
ENTRYPOINT ["/docker-entrypoint.sh"]