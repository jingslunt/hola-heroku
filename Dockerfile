FROM alpine:3.16
COPY entrypoint.sh /entrypoint.sh
RUN set -ex\
    && apk add --no-cache curl \
    && curl -o /hola-proxy -L https://github.com/Snawoot/hola-proxy/releases/download/v1.5.4/hola-proxy.linux-amd64 \
    && chmod +x /hola-proxy \
    && chmod +x /entrypoint.sh \
    && apk del curl
CMD /entrypoint.sh
