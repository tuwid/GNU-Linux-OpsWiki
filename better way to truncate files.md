Better way to truncate files

Its better to truncate files with 
```
> file
```

instead of  `rm -rf & touch file ` 
or `cat /dev/null > file`
as this way enables us to preserve file ownership and permissions 
