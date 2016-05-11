Making a file unalterable with chattr

You can make a file "unalterable" so that it cannot be changed or deleted even by root. 
To set it up :
```
chattr +i /path/to/file
```

After that the file is untouchable, it can only be read, and it cant be deleted or altered even by root.
To update the file firstly we need to remove the attribute using the `-i` flag:
```
chattr -i /path/to/file
```

To get the attrs list we do:
```
lsattr /path/to/file
```