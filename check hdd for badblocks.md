Check harddisk for badblocks
badblocks is a Linux utility to check for bad sectors on a disk drive 

It can be a good idea to periodically check for bad blocks. 
Badblocks can be used in conjunction with fsck as it can generate a file that can be used to feed fsck 
and do specific fixes as below:
```
$ sudo badblocks -v /dev/hda1 > bad_blocks
```

This will generate bad_blocks file that we will use to input it to fsck as below:
```
$ sudo fsck -t ext3 -l bad-blocks /dev/hda1
```
Outputting:
```
Pass 1: Checking inodes, blocks, and sizes
Pass 2: Checking directory structure
Pass 3: Checking directory connectivity
Pass 4: Check reference counts.
Pass 5: Checking group summary information.

/dev/hda1: ***** FILE SYSTEM WAS MODIFIED *****

/dev/hda1: 11/360 files, 63/1440 blocks
```
If badblocks reports a block that was already used, e2fsck will try to move the block to another place. If the block was really bad, not just marginal, the contents of the file may be corrupted.
