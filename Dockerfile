FROM ubuntu:16.04

RUN apt-get -y update && \
			apt-get -y install postfix mailutils && \
			apt-get -y install dovecot-imapd dovecot-pop3d && \
			apt-get -y install telnet vim && \
			apt-get -y install openssl && \
			apt-get -y upgrade

COPY setup.sh /opt/setup.sh

RUN chmod +x /opt/setup.sh

CMD /opt/setup.sh

