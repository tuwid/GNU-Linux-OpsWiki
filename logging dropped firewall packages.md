Logging dropped firewall packages

Its a good practice to log the dropped packages for debug by creating a logdrop chain.

We start by creating a new chain:

#the `-N` flag creates a chain
```
iptables -N LOGDROP
```

Set the logging burst and the syslog prefix:
```
iptables -A LOGDROP -m limit \
--limit 60/min -j LOG  \
--log-prefix "IPTables-Dropped: " 
```

Set the last action to `DROP`:

```
iptables -A LOGDROP -j DROP
```
and instead of dropping 
```
iptables -A INPUT -j DROP
```
we do:
```
iptables -A INPUT -j LOGDROP
```