# BLE GW MQTT JSON Parser
### Parse BLE GW JSON messages from MQTT broker and return them decoded back to the broker.

As does @OH2MP, I also am using Mosquitto as a broker and InfluxDB + Telegraf with Grafana. See [CONFIG_EXAMPLES.md](https://github.com/oh2mp/esp32_ble2mqtt/blob/main/CONFIG_EXAMPLES.md) from his project.

This script sends the decoded data as JSON to the broker and the dataformat is compatible with @OH2MP's [BLE2MQTT](https://github.com/oh2mp/esp32_ble2mqtt) project. See [DATAFORMATS.md](https://github.com/oh2mp/esp32_ble2mqtt/blob/main/DATAFORMATS.md)

## Supported BLE beacons include:
- [Ruuvi tag](https://ruuvi.com/) (Data format V5 aka RAWv2 only)

More to be supported eventually. Goal is to support the same as OH2MP ESP32 BLE2MQTT

## Hardware prerequisites
- [April Brother BLE Gateway 4.0](https://blog.aprbrother.com/product/ab-ble-gateway-4-0)
- See also [April Brother Wiki](https://wiki.aprbrother.com/en/AB_BLE_Gateway_V4.html) for documentation
- and their Github for [ab-ble-gateway-sdk](https://github.com/AprilBrother/ab-ble-gateway-sdk)

## Software prerequisites
- Some MQTT broker like Mosquitto running somewhere.
- Perl libraries Net::MQTT::Simple and JSON::Tiny

## Configure the BLE GW
- Get the latest firmware so that it supports JSON as plain text without msgpacking it.
- Setup it's network and other parameters
- Select MQTT topic and configure it for your MQTT broker

I used blegw/jsonraw as the topic for messages from the BLE GW. That is then subscribed for this script for processing

## Configuring the script
Two files are needed for the script config.txt and known_tags.txt.

# Disclaimer
The device was built to my own needs, and has only been tested in the northern hemisphere east of Greenwich, so negative coordinates may or may not work properly. This has also not been checked for memory leaks. Feel free to create an issue and I'll try to fix the code at some time, or not. Even better if you have a fix, let me know and I can import the fix.

# Thanks
- @OH2MP for the ESP32 based BLE2MQTT project and dataformats
- @AprilBrother for creating the BLE Gateway