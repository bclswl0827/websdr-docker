FROM debian:buster-slim

ADD entrypoint.sh /opt/entrypoint.sh
RUN sed -e "s/security.debian.org/mirrors.bfsu.edu.cn/g" \
        -e "s/deb.debian.org/mirrors.bfsu.edu.cn/g" \
        -i /etc/apt/sources.list \
    && apt-get update \
    && apt-get install --no-install-recommends -y curl libasound2 libfftw3-3 libssl-dev \
    && curl http://mirrors.bfsu.edu.cn/ubuntu-ports/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_armhf.deb \
            -o /tmp/libpng12-0.deb \
    && curl http://mirrors.bfsu.edu.cn/ubuntu-ports/pool/main/o/openssl/libssl1.0.0_1.0.2g-1ubuntu4.18_armhf.deb \
            -o /tmp/libssl1.0.0.deb \
    && dpkg -i /tmp/*.deb \
    && apt-get autoremove --purge -y curl \
    && rm -rf /tmp/*.deb \
              /var/lib/apt/lists/* \
    && chmod +x /opt/entrypoint.sh \
    && mkdir /usr/bin/websdr

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
