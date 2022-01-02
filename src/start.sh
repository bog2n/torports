cp /srv/hostname /tmp/hostname
php /convert_hosts.php > /etc/tor/torrc
cat /etc/tor/torrc | grep -i Port > /tmp/ports
chmod 555 /tmp/ports
chmod 555 /tmp/hostname
service lighttpd start
tor
