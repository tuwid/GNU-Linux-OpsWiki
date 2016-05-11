Multiple IP Address with aliasing 

IP Aliasing is assigning multiple IP address to a single LAN card.  
This can be useful for creating virtual websites on your webservers for many configurations and you don’t have to purchase a new LAN card for each ip address.

Supposing your primary card is `eth0` we can set up a temporary alias by executing:
```
ifconfig eth0:0 192.168.100.100 up
ifconfig eth0:1 192.168.100.150 up
...
ifconfig eth0:10 192.168.100.250 up
```

To make this permanent we need to edit network config files. 
In debian based system we edit the `/etc/network/interfaces` and we add:
```
auto eth0:0
iface eth0:0 inet static
        address 192.168.100.100
        netmask 255.255.255.0

```

In red hat based systems we first copy our existing card configuration 
/etc/sysconfig/network-scripts/ifcfg-eth0 into a new/etc/sysconfig/network-scripts/ifcfg-eth0:1
and then we edit the `DEVICE` and `IPADDR` directives like below:
```
DEVICE="eth0:1"
...
IPADDR=192.168.100.100
```