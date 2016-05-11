List installed packages on Debian/Ubuntu

We can get a list of all the installed packages on a Debian / Ubuntu server by issuing:

```
dpkg --get-selections
```

Its a good practice to save this file as it comes in handy when migrating so we pipe it into a file
```
dpkg --get-selections > /root/package_list
```
To search for a specific package we grep it:
```
dpkg --get-selections | grep <package>
```


Here we're searching for the rabbitmq package:
```
# dpkg --get-selections | grep rabbitmq
rabbitmq-server install
```