#! /bin/sh

if [ `getconf LONG_BIT` = "64" ]; then
	cd 64bit
	./forticlientsslvpn
else
	cd 32bit
	./forticlientsslvpn
fi
