

The Linux `du` (disk usage) is a standard command used to check the information of disk usage of files and directories on a machine.
```
tuwid@valhalla:~$ du tmp/
16	tmp/npm-17349-xo9lASR4/registry.npmjs.org/net-ping/-
...
52	tmp/npm-17349-xo9lASR4
56	tmp/
```
Using `-h` option with `du` command provides results in `Human Readable Format`. Means you can see sizes in Bytes, Kilobytes, Megabytes, Gigabytes etc as below:
```
tuwid@valhalla:~$ du -sh tmp/
56K	tmp/
```
Using `-a` flag with `du` command displays the disk usage of all the files and directories.

```
tuwid@valhalla:~$ du -ah tmp/
12K	tmp/npm-17349-xo9lASR4/registry.npmjs.org/net-ping/-/net-ping-1.1.11.tgz
...
52K	tmp/npm-17349-xo9lASR4
56K	tmp/
```

To find top largest files in a directory we do:
```
du -hsx * | sort -rh | head -10
```
The `s` option here is to summarize (display only a total for each entry)