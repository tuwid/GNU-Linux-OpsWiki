Keep track of failed SSH log-in attempts

To have a basic idea of what is going around your system its a good idea to check the auth.log often.

All login attempts are logged to /var/log/auth.log.

Failed attempts
```
grep sshd.\*Failed /var/log/auth.log 
```
sshd[5657]: Failed password for root from 95.58.255.62 port 38980 ssh2
sshd[5768]: Failed password for root from 91.205.189.15 port 38156 ssh2
...
```
Port scans
Look for failed connections (i.e. no login attempted, could be a port scanner, etc.):
```
grep sshd.*Did /var/log/auth.log
```
```
sshd[7748]: Did not receive identification string from 70.91.222.121
sshd[1919]: Did not receive identification string from 50.57.168.154
...
```