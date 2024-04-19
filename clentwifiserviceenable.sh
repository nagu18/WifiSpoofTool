!#/bin/bash
sudo systemctl enable NetworkManager
sudo systemctl enable wpa_supplicant
sudo systemctl start NetworkManager
sudo systemctl start wpa_supplicant
