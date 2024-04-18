DHCP SERVER SET-UP
Sudo apt install isc-dhcp-server
/etc/dhcp/dhcpd.conf.  — take this config file a backup(dhcpd.conf,org)
# DHCP Server Configuration for subnet 20.0.0.0/24

# Set default lease time (in seconds)
default-lease-time 600;

# Set maximum lease time (in seconds)
max-lease-time 86400;

# Set subnet mask
option subnet-mask 255.255.255.0;

# Set broadcast address
option broadcast-address 20.0.0.255;

# Set domain name
option domain-name "server.local";

# Specify that this DHCP server is authoritative
authoritative;

# Define subnet 20.0.0.0/24
subnet 20.0.0.0 netmask 255.255.255.0 {
    # Define IP address range to be assigned to clients
    range 20.0.0.5 20.0.0.200;

    # Set the default gateway (router) for clients
    option routers 20.0.0.1;

    # Set the DNS servers to be used by clients
    option domain-name-servers 20.0.0.1;
}


Go to — Cd /etc/default — for isc-dhcp-server 
Where we need to specify for which interface we need to set this  DHCP server
INTERFACESv4 =“[specify here]” ex — wlan0,eth0..


                                              — for configuring firewall
Ufw enable 

Ifconfig [interface] [router ip] — example [ifconfig ens106 20.0.0.1
 
systemctl restart isc-dhcp-server  — to restart 
systemctl status isc-dhcp-server — to view status
 



