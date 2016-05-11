Finding file with regexes

From the man page of find there is a section that says that find support regexes (so no more need to pipe stuff out to grep) 

So basically: 

```
find -type f -regex ".*/A[^/]+\.sh$"
```

translates to "find any file that starts with A and ends with a sh extension"