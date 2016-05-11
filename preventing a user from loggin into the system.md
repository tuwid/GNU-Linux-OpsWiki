Preventing a user from logging into the system

If a linux system user is able to login on the shell or with SSH depends on its shell setting in /etc/passwd.
To prevent that we can simply set his shell either to /bin/false or /sbin/nologin.

Example for Debian / Ubuntu :
```
usermod -s /bin/false username
```

For Redhat, Fedora or CentOS  we use /sbin/nologin:

```
usermod -s /sbin/nologin otheruser
```

Warning: Do not set these shells for the root user!
