FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y fail2ban

COPY entrypoint.sh /entrypoint.sh

RUN chmod a+x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "fail2ban-server", "-f", "-x", "-v", "start" ]

HEALTHCHECK --interval=10s --timeout=5s \
  CMD fail2ban-client ping || exit 1