Find the mac of all your network interfaces

To get the MACs of all our interfaces a quick approach is to grep the HWaddr from the ifconfig command
```
# ifconfig -a | grep HWaddr
```
Thus having:
```
eth0      Link encap:Ethernet  HWaddr 00:26:b9:68:a1:93  
virbr0    Link encap:Ethernet  HWaddr 82:58:ed:e8:08:5a  
virbr1    Link encap:Ethernet  HWaddr 52:54:00:3c:6b:36  
wlan0     Link encap:Ethernet  HWaddr 00:24:d6:97:8c:f4 
```