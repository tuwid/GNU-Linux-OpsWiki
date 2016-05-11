Cron dot-in-filename issues

The script filenames in cron.d/, cron.daily/, cron.hourly/, etc., should not contain dot(.), otherwise run-parts will skip them.

According to `run-parts(8)` 
````
the names must consist entirely of upper 
and lower case  letters,  digits, underscores,
 and hyphens.
```
So, if you have a cron script backup.sh, analyze-logs.pl in cron.daily/ directory, you'd best to remove the extension names.