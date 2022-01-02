from ubuntu
env TZ="Europe/Warsaw"
run ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime
run apt update
run apt install tzdata -y
run dpkg-reconfigure --frontend noninteractive tzdata
run apt install tor gettext-base lighttpd php7.4-cgi -y
run lighty-enable-mod fastcgi
run lighty-enable-mod fastcgi-php
copy src/lighttpd/* /var/www/html/
copy hosts.json /tmp/hosts.json
run chmod 600 /srv
copy keys/* /srv/
copy src/convert_hosts.php /convert_hosts.php
copy src/start.sh /start.sh
entrypoint sh /start.sh
