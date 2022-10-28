FROM alpine:3.16
RUN set -ex\
    && apk add --no-cache curl \
    && curl -o hola-proxy -L https://github.com/Snawoot/hola-proxy/releases/download/v1.5.4/hola-proxy.linux-amd64 \
    && chmod +x ./hola-proxy \
    && apk del curl
CMD /entrypoint.sh
