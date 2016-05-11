Change your `hostname` on systems using `systemd`

The `hostnamectl` command is part of the `systemd-services` package.

It combines setting the `hostname` via the hostname command and editing `/etc/hostname`. As well as setting the static hostname, it can set the "pretty" hostname, which is not used in Ubuntu. 
Unfortunately, editing /etc/hosts still has to be done separately.

```
hostnamectl set-hostname new-hostname
```

This takes effect immediately without having to reboot.