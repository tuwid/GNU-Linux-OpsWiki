Practical `cron`

Linux Cron utility is an effective way to schedule a routine background job at a specific time and/or day on an on-going basis.

The linux crontab format is as follows:
```
MIN HOUR DOM MON DOW CMD
```

To list our current cron jobs we use the `-l` flag: 
```
crontab -l
```
To check another user's crontab we use the `-u user` flag as well for example:
```
crontab -u tuwid -l
```

To edit the crontab we use the `-e` flag:
```
crontab -e
```

Having this in mind lets set a cron job that executes every weekday during working hours
```
00 09-18 * * 1-5 /root/check_cache.sh
```

Use the following, if you want to execute something every 10 minutes:
```
*/10 * * * * macchanger -A eth0
```