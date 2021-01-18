prefix = "/usr/local"

install: install-pl install.init

install-pl: blegw_mqtt_decode.pl
	cp blegw_mqtt_decode.pl $(prefix)/bin
	chmod 755 $(prefix)/bin/blegw_mqtt_decode.pl

install-init: init/blegw_mqtt_decode.service
	cp init/blegw_mqtt_decode.service /etc/systemd/system/
