IPv6 management on the fly

As we're currently all moving on ipv6 here is how to get your IPv6 configuration:

using `ip`:
```
ip -6 addr show dev <interface>
```
```
ip -6 addr show dev eth0
```
using `ifconfig`:
```
ifconfig eth0 |grep "inet6"
```