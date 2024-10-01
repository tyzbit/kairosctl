FROM alpine:3
ENV VERSION=v3.2.0

ADD https://github.com/kairos-io/provider-kairos/releases/download/${VERSION}/kairosctl-${VERSION}-linux-amd64.tar.gz /tmp/kairosctl.tar.gz
RUN tar -xvzf /tmp/kairosctl.tar.gz -C /tmp/ && \
    cp /tmp/kairosctl /usr/local/bin && \
    rm -rf /tmp/*

CMD ["kairosctl"]
