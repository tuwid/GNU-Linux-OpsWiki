Check the version of a package on a deb based system

You can check the version of a package installed in a deb based system with the `dpkg` command:

```
# dpkg --list python
Desired=Unknown/Install/Remove/Purge/Hold
||/ Name           Version        Description
+++-==============-==============-============================================
ii  python         2.7.3-0ubuntu2 interactive high-level object-oriented langu
```

The `ii` means thats installed. Other self explaining statuses can be as below:
```
Not
Inst
Conf-files
Unpacked
halF-conf
Half-inst
trig-aWait
Trig-pend
```