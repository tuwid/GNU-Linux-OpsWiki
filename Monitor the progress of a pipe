Monitor the progress of a pipe

You can use `pv` to monitor the progress of any pipe

This can be done by installing `pv` and putting it between input / output pipes.

From the package description:
```
pv - Pipe Viewer - is a terminal-based tool for monitoring the progress of data through a pipeline. It can be inserted into any normal pipeline between two processes to give a visual indication of data flow.
```
Installation
```
sudo apt-get install pv
```
Example
```
dd if=/dev/urandom | pv | dd of=/dev/null
```
Output
```
1,74MB 0:00:09 [ 198kB/s] [      <=>                               ]
```
You could specify the approximate size with the --size if you want a time estimation.
Other uses

You can also use it to output to stdout:
```
pv /home/user/bigfile.iso | md5sum
```
Output
```
50,2MB 0:00:06 [8,66MB/s] [=======>         ] 49% ETA 0:00:06
```
Note that in this case, pv recognizes the size automatically.
