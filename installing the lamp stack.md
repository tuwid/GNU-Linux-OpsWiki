Installing the LAMP stack

To install the default LAMP (Linux-Apache-MySQL-PHP) stack in Ubuntu

First refresh your package index...
```
$ sudo apt-get update
```
... and then install the LAMP stack:
```
$ sudo apt-get install lamp-server^
```
Mind the caret (`^`) at the end. 