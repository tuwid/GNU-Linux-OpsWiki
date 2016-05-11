Random password generator in bash

You can quickly generate passwords in the terminal using one of these examples below.

Simple hashing the date:
date +%s | sha256sum | base64 | head -c 32 ; echo

My favourite:
```
openssl rand -base64 32
```

Using the tr command:
```
tr -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1
```

Using devices:
```
strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo
```