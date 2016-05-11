Detect your linux distribution

You can find the base of your linux distribution by issuing the `lsb_release` command like below:
```
$ lsb_release -i
Distributor ID:	elementary OS
```

To have more detailed information on your system you can use the `-a` flag:

```
$ lsb_release -a
No LSB modules are available.
Distributor ID:	elementary OS
Description:	elementary OS Luna
Release:	0.2.1
Codename:	luna
```