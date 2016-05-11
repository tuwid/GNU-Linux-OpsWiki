Sha-bang `(#!)` explained 
The sha-bang (#!) at the head of a script tells your system that this file is a set of commands to be fed to the command interpreter indicated. 

```
#!/bin/sh
#!/bin/bash
#!/usr/bin/perl
#!/usr/bin/tcl
#!/bin/sed -f
#!/bin/awk -f
```

Depending on the situation we might need to run a script with a different
interpreter or different version as for example 

```
#!/usr/bin/python 
```
or 
```
#!/usr/bin/python3
```
or
```
#!/usr/bin/perl
```
or
```
#!/usr/bin/perl -w
```




