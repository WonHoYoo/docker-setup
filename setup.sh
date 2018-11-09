#!/bin/bash


openssl req -newkey rsa:2048 -nodes -keyout key.pem -x509 -days 365 -batch -out mailcert.pem

#cat >> /etc/postfix/main.cf <<EOF
#myhostname=mail.work.com
#myorigin=/etc/mailname
#mydestination=mail.dalas.com, dalas.com, localhost, localhost.localdomain
#relayhost=
#mynetworks = 127.0.0.0/8 172.17.0.0/24
#mailbox_size_limit = 0
#recipient_delimiter = +
#inet_interfaces = all
#inet_protocols = ipv4
#
#home_mailbox = Maildir/
#alias_maps = hash:/etc/aliases
#alias_database = hash:/etc/aliases
#
#smtpd_tls_cert_file = /etc/ssl/certs/mailcert.pem
#smtpd_tls_key_file = /etc/ssl/private/mail.key
#smtpd_use_tls=yes
#smtpd_tls_session_cache_database = btree:${data_directory}/smtpd_scache
#smtp_tls_session_cache_database = btree:${dataa_directory}/smtp_scache
#smtpd_tls_security_level=may
#smtpd_tls_protocols = !SSLv2, !SSLv3
#
#local_recipient_maps = proxy:unix:passwd.byname $alias_maps
#EOF

#service postfix start

#cat >> /etc/dovecot/dovecot.conf <<EOF
#disable_plaintext_auth = no
#mail_privileged_group = mail
#mail_location = Maildir/
#
#userdb {
#		driver=passwd
#}
#passdb {
#		args = $s
#		driver = pam
#}
#protocols = imap pop3
#listen = *
#
#service auth {
#		unix_listener /var/spool/postfix/private/auth {
#				group = postfix
#				mode = 0660
#				user = postfix
#		}
#}
#
#ssl = required
#ssl_cert = </etc/ssl/certs/mailcert.pem
#ssl_key = </etc/ssl/private/mail.key
#EOF

#service dovecot start


