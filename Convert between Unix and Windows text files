Converting between Unix and Windows text files

The format of Windows and Unix text files differs slightly. In Windows, lines end with both the line feed and carriage return ASCII characters, but Unix uses only a line feed. 

As a consequence, some Windows applications will not show the line breaks in Unix-format files. Likewise, Unix programs may display the carriage returns in Windows text files with `Ctrl-m` `(^M)` characters at the end of each line

The way to fix this issue is to use dos2unix and unix2dos
These utilities are available for converting files like below:
```
dos2unix winfile.txt unixfile.txt
unix2dos unixfile.txt winfile.txt
```