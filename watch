Cycling commands with `watch`
Run a command repeatedly, at specified time intervals.
The default is two-second intervals, but this may be changed with the -n option.

```
watch -n 5 tail /var/log/syslog
# shows tail end of system log /var/log/syslog, every five seconds.
```

```
watch -n 1 'netstat -an | grep ":443"'
# shows real time tcp connections to port 443 
```

```
watch -n 1 'netstat -an | grep ":80 " | wc -l'
# shows the number of connections on port 80 in real time  
```