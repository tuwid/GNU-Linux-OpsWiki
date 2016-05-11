Executing scripts on system boot

You can execute a script by adding it to the `/etc/rc.local` file.

You have to `sudo` to edit 
```
$sudo nano /etc/rc.local
```
And add the script before the:
```
exit 0
```

