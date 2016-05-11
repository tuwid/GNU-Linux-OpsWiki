Progress and speed with 'cp'

While cp hasn't got this functionality, you can use pv to watch the progress and speed of a cp:
```
pv my_big_file > backup/my_big_file
```
Note: this method will lose the file's permissions and ownership. Files copied this way will have the same permissions as if you'd created them yourself and will belong to you.

In this example, pv basically just outputs the file to stdout*, which you redirect to a file using the `>` operator. 
Simultaneously, it prints information about the progress to the terminal when you do that.

This is what it looks like:

$ pv my_big_file > backup/my_big_file
 138MB 0:00:01 [73.3MB/s] [============>] 100% 

You may need to install `pv` on your system
```
sudo apt-get install pv
```