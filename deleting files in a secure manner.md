Deleting files in a secure manner

We can can delete files in a relatively secure way by using `shred`

`Shred` is already installed from core utilities in Ubuntu to securely erase and overwrite single files by using the Gutman method.

Fast shredding
```
sudo shred -vzn 0 /dev/sdc1
```

This erases whole partitions by overwriting everything with 0s in a single iteration

Secure shredding
```
shred -vzn 3 /dev/sdc1
```
erases the whole partition using 3 iterations with random numbers. 
In addition (option -z) writes zeros to hide the shredding process at the end. This will take 4 times longer than the fast method.

By shredding a partition we will overwrite this partition with 0 or random numbers. It therefore efficiently deletes everything including file system caches on that partition forever. This can also be used to remove unwanted remnants of deleted files. Files we want to keep will have to be backed up before shredding.