FROM ubuntu:17.10

RUN apt-get update && apt-get --yes dist-upgrade
RUN apt-get --yes install asterisk asterisk-espeak asterisk-mobile asterisk-mp3 asterisk-mysql asterisk-ooh323 python-asterisk python3-panoramisk supervisor
RUN useradd -r supervisor

COPY config/supervisor/*.conf /etc/supervisor/conf.d/

CMD /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
