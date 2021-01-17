install:
	cp blegw_mqtt_decode.pl /usr/local/bin
	chmod 755 /usr/local/bin/blegw_mqtt_decode.pl
	cp init/blegw_mqtt_decode.service /etc/systemd/system/
