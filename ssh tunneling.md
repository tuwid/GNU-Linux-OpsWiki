


SSH Tunneling made easy

SSH tunneling can be thought as a poor-man's-VPN. It is handy in situations where you would like to hide your traffic from any body who might be listening on the wire or eavsdropping

You can use such tunnel between your computer and your Unix/BSD/Linux server to bypass limits placed by a network or to bypass NAT and/or to access a specific service in a server thats not available to public.

For example if we would want to connect to `port` on `server` through ssh we do 
```
ssh -L 8080:server:port username@ssh_server
```
and after that that port is made available into our loopback interface and we can connect to it
as `127.0.0.1:8080` thus tunneling the traffic to `server` : `port` 

Bonus example:
```
ssh -L8888:irc.freenode.net:6667 myuser@my_ssh_host.net
```

To connect to your local port as if it's irc server. On irssi this would be:
```
/server 127.0.0.1 8888
```