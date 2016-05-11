Test disk speed with `dd`

﻿Under Linux, the dd command can be used also for simple I/O performance measurements as follows:

```
# dd if=/dev/zero of=/root/testfile bs=1G count=1 oflag=direct
1+0 records in
1+0 records out
1073741824 bytes (1.1 GB) copied, 32.474 s, 33.1 MB/s
```


cut -d "	" -f1 test