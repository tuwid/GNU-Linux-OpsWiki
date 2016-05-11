Force a time update with `ntp`


To force a ntp time update from the terminal we use the ntpdate command as follows:
```
ntpdate -u <time server>
```
As in the example below we can also check the amount of seconds our current time shifts:
# ntpdate -u  time.nist.gov
23 Jun 02:30:45 ntpdate[10443]: 
step time server 128.138.141.172 offset 24336.602 sec
