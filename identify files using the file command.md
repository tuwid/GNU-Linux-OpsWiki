Identify files using the `file` command

We can quickly identify the type of a file using the file command as below

```
$ file /bin/bash
/bin/bash: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs)
```

```
$ file zte.py
zte.py: a /bin/python script, ASCII text executable
```
```
$ file messaggi.rar
messaggi.rar: RAR archive data, v1d, os: Win32
```

`file` tests each argument in an attempt to classify it. There are three sets of tests, performed in this order: filesystem tests, magic tests, and language tests.
The first test that succeeds causes the file type to be printed.

For more additional options about `file` check its man page:
```
man file
```