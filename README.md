Tor-Ports
=========

Overview
--------

Tor ports is a docker container which exposes designated tcp socket in your network
to the tor network which makes it accessible across the Internet even when
you are behind NAT.

Usage
-----

* Create directories<br>
`./configure.sh`

* Generate keys<br>
Generate some keys using <https://github.com/cathugger/mkp224o> or import<br>
existing ones and put them in `keys/` directory

* Choose which socket to expose<br>
Set it in `hosts.json`

* Build and run container<br>
`sudo make`<br>
Visit `<host ip>:8080` for basic overview of Tor-Ports
