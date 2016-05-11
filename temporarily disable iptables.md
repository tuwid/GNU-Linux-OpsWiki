Temporarily disable iptables

Although its not a good idea often we need to make sure that nothing is blocking our 
data from/to a specific host or we just need to disable the firewall. 
If we're on linux we can issue the following commands as root:

```
# iptables -F
# iptables -X
# iptables -t nat -F
# iptables -t nat -X
# iptables -t mangle -F
# iptables -t mangle -X
# iptables -P INPUT ACCEPT
# iptables -P OUTPUT ACCEPT
# iptables -P FORWARD ACCEPT
```

we successfully disabled (technically is a cleanup & allow ) the iptables firewall.
`-X` it will attempt to delete every non-builtin chain in the table.
`-F` is equivalent  to deleting all the rules one by one
