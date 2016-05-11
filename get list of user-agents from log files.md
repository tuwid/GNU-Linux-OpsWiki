Get list of User-Agents from log files

Assuming your log configuration is standard enough, it can be useful to extract a list
of user-agents that visit your site and count them by type. 

This is an easy task with the `awk` commend:

```
awk -F\" '{print $6}' /var/log/<webserver_here>*  \
| sort | uniq -c | sort -fr

```
`-F` - is the filed separator `"` in our case.

`'{print $6}' ` - prints the 6th field of the out of splitting by the `-F ` flag (typically the user-agent field).

`/var/log/<webserver_here>*`  - the webserver's log files.

All this is piped through a `sort` and a `unic -c` to get the filtered number of occurrences
and at last filter them out again based the `f` flag (ignore case) 
and `r` (reverse sort) thus having our output like below:  
```
  8 Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview Analytics) Chrome/27.0.1453 Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)
  2 Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Firefox/38.0
  1 Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)
```