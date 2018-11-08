FROM ubuntu:14.04

RUN apt-get -y update && apt-get -y upgrade && \
			apt-get -y install postfix && \
			apt-get -y install dovecot-core dovecot-imapd dovecot-pop3d && \
			apt-get -y install telnet vim


COPY main.cf /etc/postfix/main.cf
RUN service postfix start

COPY dovecot.conf /etc/dovecot/dovecot.conf
COPY 10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY 10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY 10-master.conf /etc/dovecot/conf.d/10-master.conf

#RUN service dovecot start
