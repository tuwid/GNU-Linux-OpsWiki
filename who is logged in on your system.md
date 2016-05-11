Who is logged in on your system

If you're working on a server its good practice to check if other people are working on that server too
and you might want to know also what they are doing.

To do this we use the `w` command:
```
root@bsfw3-1:~# w -s
 19:34:06 up 67 days, 21:26,  2 users,  load average: 0.09, 0.13, 0.13
USER     TTY      FROM              IDLE WHAT
root     pts/0    10.92.42.138      3:23  nano /etc/dnsmasq.d/sede.conf
root     pts/1    10.92.42.138      0.00s -bash
Here we have the IP from where that user is logged from, the login time
and what is he doing (in this case editing the dns config file )
```
