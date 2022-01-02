from ubuntu
env SRC_PORT="22"
env DST_HOST="172.17.0.1:22"
env TZ="Europe/Warsaw"
run ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime
run apt update
run apt install tzdata -y
run dpkg-reconfigure --frontend noninteractive tzdata
run apt install tor gettext-base lighttpd php7.4-cgi -y
run lighty-enable-mod fastcgi
run lighty-enable-mod fastcgi-php
copy src/lighttpd/* /var/www/html/
copy src/torrc /tmp/torrc
run cat /tmp/torrc | envsubst > /etc/tor/torrc
run cat /etc/tor/torrc | grep Port > /tmp/ports
run chmod 555 /tmp/ports
run chmod 600 /srv
run rm /tmp/torrc
copy keys/* /srv/
copy src/start.sh /start.sh
entrypoint sh /start.sh
