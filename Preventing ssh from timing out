Preventing ssh from timing out

On different servers and different connections happens often that due to latency or packet loss your ssh connections might timeout. 


To to prevent your ssh connection from freezing on connection issues you may want to setup application-level keep-alives for SSH . 

This can be done by adding to your settings (~/.ssh/config) the following directives at the start:

```
Host *
ServerAliveInterval 15
```
This makes ssh client send application-level keep-alives every 15 seconds. Whenever three of them fail consecutively (configurable using ServerAliveCountMax), the client considers the connection as hung and closes it.

Opposed to the other option TCPKeepAlive, this is checked within the encrypted channel and is not spoofable. 