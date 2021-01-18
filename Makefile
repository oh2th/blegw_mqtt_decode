prefix = "/usr/local"
systemctldir = "/etc/systemd/system/"

install: $(prefix)/bin/blegw_mqtt_decode.pl $(systemctldir)/blegw_mqtt_decode.service

$(prefix)/bin/blegw_mqtt_decode.pl: blegw_mqtt_decode.pl
	cp blegw_mqtt_decode.pl $(prefix)/bin
	chmod 755 $(prefix)/bin/blegw_mqtt_decode.pl

$(systemctldir)/blegw_mqtt_decode.service: init/blegw_mqtt_decode.service
	cp init/blegw_mqtt_decode.service $(systemctldir)
