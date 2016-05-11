Using `type` to find aliases

To find out what command is associated with an alias use the `type` function.

`type` will not only tell you about aliases, but also functions, builtins, keywords and external commands as below:
```
$ type ls
ls is aliased to `ls --color=auto'
```

```
$ type rm
rm is /bin/rm
```

```
$ type cd
cd is a shell builtin
```

```
$ type psgrep
psgrep is a function
psgrep () 
{ 
    ps -ef | { 
        read -r;
        echo "$REPLY";
        grep --color=auto "$@"
    }
}
```