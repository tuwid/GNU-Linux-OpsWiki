Quick port test with `netcat`

To be sure that we can communicate with a service sometimes the very first thing we need to do is connect to it or verify manually that we can connect. 

To do this quickly we can issue the `nc` command at the terminal:
```
nc localhost.localdomain 25
220 localhost.localdomain ESMTP Sendmail 8.13.1/8.13.1;
Thu, 31 Mar 2005 15:41:35 -0700
```

To issue commands to a specific service through it we write to it directly:
```
nc localhost.localdomain 25

GET / HTTP/1.1
```
witch would get us this:

```
HTTP/1.1 302 Found
Location: http://www.google.al/?gws_rd=cr&ei=h6V5VeL5Fae2ygPTqICADA
Cache-Control: private
Content-Type: text/html; charset=UTF-8
...
```