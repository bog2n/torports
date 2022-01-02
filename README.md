Tor-Ports
=========

Overview
--------

Tor ports is a docker container which exposes designated tcp socket in your network
to the tor network which makes it accessible across the Internet even when
you are behind NAT.

Usage
-----

* Create directories
`./configure.sh`

* Generate keys
Generate some keys using <https://github.com/cathugger/mkp224o> or import
existing ones and put them in `keys/` directory

* Choose which socket to expose
Set it in env vars
`SRC_PORT=<external port>
DST_HOST=<destination host>`
... or add them directly to `src/torrc` file

* Build and run container
`sudo make`
Visit `<host ip>:8080` for basic overview of Tor-Ports
