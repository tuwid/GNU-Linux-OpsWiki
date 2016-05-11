Better way to truncate files

Its better to truncate files with 
```
cat /dev/null > file
```

instead of  `rm -rf & touch file ` 
as this way enables us to preserve file ownership and permissions 