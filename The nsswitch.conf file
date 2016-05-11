The `/etc/nsswitch.conf` file 

The nsswitch.conf file by definition is the 
#System Databases and Name Service Switch configuration file

This file actually just cointains the order of how DNS queries should be done as
typically is like this :
```
hosts:   files dns nisplus nis
```           

this tells the system to first resolve a host name by looking at the local hosts file(`/etc/hosts`), then if the name is not found look to your DNS server as defined by /etc/resolv.conf and if not found there look to your NIS server. 

