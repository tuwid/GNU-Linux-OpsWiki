Quick clean up log files

Happens that a log file might get large and we need a clean start so we use the bash's trucate option `>`

Using `echo "test" > file" will delete the file's content and put "test" in it while the double `>>` will append  "test" at the end of it, leaving the content intact.

So the way of doing it would be:
```
cd /var/log
cat /dev/null > messages
cat /dev/null > syslog
cat /dev/null > wtmp
```

This can be extended to quickly cleanup any type of logs
(apache, squid etc) 
