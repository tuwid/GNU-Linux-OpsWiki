Adding IPs address on the fly

You can quickly add an IP address on the terminal by doing:

```
ip addr add <ip> dev <interface> 
```

For exapmle:
```
ip addr add 10.10.100.7 dev eth0 
```
This can come in handy for quick tests (testing vhosts or plain network tests)  

The same applies for IPv6 address:

```
ip -6 addr add <ipv6address>/<prefixlength> dev <interface> 
```

Exapmle:
```
ip -6 addr add 2001:0db8:0:f101::1/64 dev eth0 
```
You can test if your new ipv6 works by pinging one of google's IPv6 servers: 
ping6 -I eth0 2a00:1450:4001:80e::1006