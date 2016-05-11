Enable IP forwarding

If we are setting up a Linux router/gateway or maybe a VPN server (pptp or ipsec) then we will need to enable forwarding. 
This can be done in several ways that I will present bellow.

First we check if IP forwarding is already enabled. This can be done through 
using the sysctl util or checking the ip_forward file:
```
sysctl net.ipv4.ip_forward
```
Will output something like:
```
net.ipv4.ip_forward = 0
```
Or
```
cat /proc/sys/net/ipv4/ip_forward
0
```

To enable IP forwarding (without rebooting the system) on the fly we do :

sysctl -w net.ipv4.ip_forward=1

or
```
echo 1 > /proc/sys/net/ipv4/ip_forward
```

the setting is changed instantly; the result will not be preserved after rebooting the system.

To make it permanent we set it on the `/etc/sysctl.conf` file 

/etc/sysctl.conf:
net.ipv4.ip_forward = 1

To apply it we do:
```
sysctl -p /etc/sysctl.conf
```