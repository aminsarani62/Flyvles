FROM alpine:latest

RUN apk add --no-cache wget unzip

RUN wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip \
    && unzip Xray-linux-64.zip \
    && mv xray /usr/local/bin/ \
    && chmod +x /usr/local/bin/xray

COPY config.json /etc/xray/config.json

CMD ["xray", "-config", "/etc/xray/config.json"]
