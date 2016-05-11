Backgrounding and foregrounding tasks in a terminal 

Often happens that we need to execute some tasks that might
take a couple of minutes and happens that it can be screen-blocking

To prevent this we insert that task in the background
by adding a `&` at the end of the command like:

```
#./backup_script.sh &
```

By doing this we put the task in the background and it continues to execute and it might post some messages while it executes. 

To prevent showing off all the messages we output it to `/dev/null`
```
#./backup_script.sh > /dev/null &
```

If we want only to see the errors we do :

```
#./backup_script.sh &> /dev/null &
```
