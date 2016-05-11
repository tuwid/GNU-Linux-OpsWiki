Fixing `locale` issues

Often we can encounter `locale` issues like below:
```
perl: warning: Please check that your locale settings: 
locale: Cannot set LC_CTYPE  ...
locale: Cannot set LC_MESSAGES ..
locale: Cannot set LC_ALL ..

```

To fix this we first run locale to list what locales are currently defined for the current user:

```
$ locale
LANG=C
LANGUAGE=
LC_CTYPE=fi_FI.UTF-8
LC_NUMERIC="C"
LC_TIME="C"
LC_COLLATE=fi_FI.UTF-8
LC_MONETARY="C"
LC_MESSAGES=fi_FI.UTF-8
LC_PAPER="C"
LC_NAME="C"
LC_ADDRESS="C"
LC_TELEPHONE="C"
LC_MEASUREMENT="C"
LC_IDENTIFICATION="C"
LC_ALL=
```

Then we generate the missing locale and reconfigure locales to take notice:
```
$ sudo locale-gen "en_US.UTF-8"
Generating locales...
  en_US.UTF-8... done
Generation complete.
```
```
$ sudo dpkg-reconfigure locales
Generating locales...
  en_US.UTF-8... up-to-date
Generation complete.
```
