Get file permissions in octal form

You can use the stat command to get a file permission's in octal form:
```
stat -c "%a %n" *
```

From the man page of stat,
```
-c  --format=FORMAT
%a     Access rights in octal
%n     File name
```
Examples for files:
```
$ stat -c "%a %n" .ssh/id_rsa 
600 .ssh/id_rsa
```
Folders:
```
$ stat -c "%a %n" /var/www
755 /var/www/
```
