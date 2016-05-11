Get apt to use a mirror / faster mirror

`apt-get` now supports a 'mirror' method that will automatically select a good mirror based on your location. 

Putting:
```
deb mirror://mirrors.ubuntu.com/mirrors.txt precise main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt precise-updates main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt precise-backports main restricted universe multiverse
deb mirror://mirrors.ubuntu.com/mirrors.txt precise-security main restricted universe multiverse
```
on the top in your `/etc/apt/sources.list` file should be all that is needed to make it automatically pick a mirror for you based on your geographical location.

Lucid (10.04), Maverick (10.10), Natty (11.04), And Oneiric (11.10) users can replace precise with the appropriate name.
