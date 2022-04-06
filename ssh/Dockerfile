FROM ubuntu

RUN apt-get update && \
    apt-get install -y openssh-client && \
    apt-get clean

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
