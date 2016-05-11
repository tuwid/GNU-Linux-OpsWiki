setuid Permission

When set-user identification (setuid) permission is set on an executable file, a process that runs this file is granted access based on the owner of the file (usually root), rather than the user who is running the executable file. This special permission allows a user to access files and directories that are normally only available to the owner. For example, the setuid permission on the passwd command makes it possible for a user to change passwords, assuming the permissions of the root ID: 

ll /usr/bin/passwd
-rwsr-xr-x 1 root root 42824 Sep 13  2012 /usr/bin/passwd*

We can set this special permissions by doing 

```
chmod +s
``` 

Although we have to be very careful with this as we dont want anyone executing files that they shouldnt as root! 