FROM ubuntu

RUN apt-get update \
  && apt-get install sshpass -y \
  && apt-get clean

ADD ./start.sh /start.sh

CMD ["/bin/sh", "/start.sh"]
