#!/bin/bash
python3 '/home/kali/Desktop/WifiTool/scorpion.py' 
sudo ifconfig wlan0 20.0.0.1 && sudo systemctl start isc-dhcp-server  
sudo systemctl restart hostapd && systemctl start apache2
echo started hostapd .....
echo "started dhcp server ... (ISC-dhcp-server)"
echo started apache2 web-server...
 
