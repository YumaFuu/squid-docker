FROM alpine

RUN apk update && \
  apk add squid

RUN echo 'never_direct allow CONNECT' >> /etc/squid/squid.conf

CMD ["squid", "-N"]
