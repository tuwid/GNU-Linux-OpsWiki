

Adding an IPv6 address:
```
ip -6 addr add <ipv6address>/<prefixlength> dev <interface> 
```

Exapmle:
```
ip -6 addr add 2001:0db8:0:f101::1/64 dev eth0 
```


Adding a IPv6 route

Using `ip`
```
ip -6 route add <ipv6network>/<prefixlength> via <ipv6address>
```

```
ip -6 route add 2000::/3 via 2001:0db8:0:f101::1
```
Using `route`:
```
route -A inet6 add <ipv6network>/<prefixlength> gw 
```
Example:
```
route -A inet6 add 2000::/3 gw 2001:0db8:0:f101::1
```

testing
# host google.com | grep v6
google.com has IPv6 address 2a00:1450:4001:80e::1006
```
ping6 -I eth0 2a00:1450:4001:80e::1006
```

# ping6 -I eth0 2a00:1450:4001:80e::1006
PING 2a00:1450:4001:80e::1006 56 data bytes
64 bytes from 2a00:1450:4001:80e::1006: icmp_seq=1 ttl=56 time=5.80 ms

