Backporting in debian

Backports are recompiled packages from testing (mostly) and unstable (in a few cases only, e.g. security updates) in a stable environment so that they will run without new libraries (whenever it is possible) on a Debian stable distribution

Backporting should be used with care as it might lead in breaking your system if you upgrade what you dont understand. 
It is therefore recommended selecting single backported packages that we need, and not use all available backports.

To use this feature in wheezy add this line:
```
deb http://http.debian.net/debian wheezy-backports main
```
in your sources.list.

Then we update the package list:
```
apt-get update
```

Now we're ready to install a package from the backport:
```
apt-get -t jessie-backports install "package"
```
or
```
aptitude -t jessie-backports install "package"
```

For more info about backporting check http://backports.debian.org/Instructions/
