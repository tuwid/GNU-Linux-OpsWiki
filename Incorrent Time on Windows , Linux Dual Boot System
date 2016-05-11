Incorrect Time on Windows/Linux Dual Boot System

If you ever worked on a dual boot system you might experienced that when you log off from Windows, into Linux, and to Windows again, the time that is shown in the bottom right corner might have been an hour or more off the actual time. 
This will correct once you refresh it by loading the time from a time server again but will remain an issue for the next logins.

To fix this open the rcS file:

sudo nano /etc/default/rcS

And update the 
```
UTC = yes
``` 
to 
```
UTC = no
```

If everything else is OK this should solve the problem.