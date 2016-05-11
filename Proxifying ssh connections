Proxifying ssh connections

Since we usually just 

```
ssh user@box 
```

we neglect a very cool feature of the ssh client as 

```
~$ ssh user@box 'ls -la /tmp'
total 4
drwxrwxrwt  4 root root   80 Jun 12 02:10 .
drwxr-xr-x 22 root root 4096 May 28  2014 ..
drwxrwxrwt  2 root root   40 Apr 14 13:24 .ICE-unix
drwxrwxrwt  2 root root   40 Apr 14 13:23 .X11-unix
~$
```
This executes the command and gets the output directly from that host.

So this enables us to do this:

```
ssh -t hostA ssh hostB
```