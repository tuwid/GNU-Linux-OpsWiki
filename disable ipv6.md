Disable IPv6

Happens often that several services and applications try to use IPv6 and failing to do that 
the connections fall back on ipv4. 
This being said and not to mention the security issues that come with that here is how to disable ipv6 on your linux box: 

First we check if its completely disabled by doing:
```
cat /proc/sys/net/ipv6/conf/all/disable_ipv6
```
If we get a 1 means thats is completely disabled , 0 means that ipv6 is not completely disabled.

The temporary fix:
```
echo "1" > /proc/sys/net/ipv6/conf/all/disable_ipv6
```
This will work until your system is rebooted. To disable it permanently we append these:
```
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1 
```
And we issue this command to apply the settings:
```
sysctl -p
```