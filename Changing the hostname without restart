Changing the hostname without restart

To change your hostname first we need to edit the following file:
`/etc/hostname` and set the new hostname. 

```
sudo nano /etc/hostname
```

After that we issue the following command in a terminal:

```
sudo hostname new-hostname
```

This will set the new hostname until you restart. See man hostname and How do I change the computer name? for further information.

After a restart your changes in /etc/hostname will be used (that we already edited)

We should also update the `/etc/hosts` file and change the line which reads:
```
127.0.1.1     old-hostname
```
so that it now contains your new hostname.
