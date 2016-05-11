Alter timestamps

You can change the modification time of a file using the touch command:
```
touch filename
```
By default this will set the file's modification time to the current time, but there are a number of flags, such as the `-d` flag to pick a particular date. 
So for example, to set a file as being modified two hours before the present, you could use the following:
```
touch -d "2 hours ago" filename
```
If you want to modify the file relative to its existing modification time instead, the following should do the trick:
```
touch -d "$(date -r filename) - 2 hours" filename
```