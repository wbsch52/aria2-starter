FROM alpine:edge

MAINTAINER Simon <xhh52ch@gmail.com>

WORKDIR /app
COPY ./conf /app/conf

RUN apk update && \
    apk add aria2 darkhttpd bash && \
    wget https://github.com/mayswind/AriaNg/releases/download/1.1.1/AriaNg-1.1.1.zip && \
    mkdir -p /app/aria2-web-ui && \
    unzip AriaNg-1.1.1.zip -d /app/aria2-web-ui && \
    rm  AriaNg-1.1.1.zip && \
    chmod -R 755 /app/aria2-web-ui && \
    chmod -R 755 /app/conf

EXPOSE 80 6800

VOLUME /data

CMD ["/bin/sh", "/app/conf/starter.sh"]
