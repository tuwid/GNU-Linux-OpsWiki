Understanding `umask`

The umask acts as a set of permissions that applications cannot set on files. It's a file mode creation mask for processes and cannot be set for directories itself. Most applications would not create files with execute permissions set, so they would have a default of 666, which is then modified by the umask.

If you want to make files not be read/write/execute by anyone but the owner, you should use a umask like `077`.

In contrast, a `umask` of `000` will make newly created directories with `777` permission. 
Such a umask is highly insecure and you should never set the umask to `000`.

The default umask on Ubuntu is 022 which means that newly created files have a permission of `744`:

```
user@computer:~$ touch new-file-name
user@computer:~$ ls -dl new-file-name
-rw-r--r-- 1 user user 0 Apr  1 19:15 new-file-name
```
To change the umask of current session to `077`, run:
```
umask 077
```
To apply this on all the users of the system you should add this on the `/etc/profile`