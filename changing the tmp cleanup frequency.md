Changing the `/tmp` cleanup frequency

The `tmp` directory is cleared by default at every boot as the `TMPTIME` in `/etc/default/rcS` is is 0 by default.

TMPTIME says how frequent the tmp dir should be cleared in days so changing this value to a different (positive) number will change the number of days a file can survive in /tmp.

This would allow files to stay in /tmp until they are a week old, and then delete them on the next reboot. 

A negative number `TMPTIME=-1` tells the system to never delete anything in /tmp.
This is probably not something you want, but is available.

BUT

there are server that almost never reboot so setting up an entry in the `crontab` it would fix the issue:

```
crontab -e
```
and we add:
```
0 5 * * 1 rm -rf /tmp/*
```

