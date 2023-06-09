FROM alpine

RUN apk add curl tar && \
  curl -s https://download.docker.com/linux/static/stable/x86_64/docker-20.10.9.tgz | tar -xzf-


FROM amazon/aws-cli:latest

LABEL maintainer "Yersa Nordman <yersa@finwo.nl> (https://finwo.nl/)"

ENTRYPOINT ["/usr/bin/bash", "-l", "-c"]

COPY --from=0 /docker/docker /usr/local/bin
