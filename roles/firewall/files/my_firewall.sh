#!/bin/bash

# ipv4
sudo iptables -A INPUT -s 127.0.0.1 -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
sudo iptables -A INPUT -j LOG --log-prefix '** SUSPECT INPUT IPV4 **'
sudo iptables -A INPUT -j DROP

sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -m conntrack --ctstate INVALID -j DROP
sudo iptables -A FORWARD -j LOG --log-prefix '** SUSPECT FORWARD IPV4 **'
sudo iptables -A FORWARD -j DROP


# ipv6
# allow RELATED and ESTABLISHED traffic
sudo ip6tables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
# LOG other kinds of traffic
sudo ip6tables -A INPUT -j LOG --log-prefix '** SUSPECT IPV6 **'
# DROP everything else
sudo ip6tables -A INPUT -j DROP
