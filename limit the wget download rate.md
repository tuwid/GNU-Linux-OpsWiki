Limit the wget download rate

You can limit the download rate of the wget command, e.g. when you are downloading a large file over a slow internet connection or to avoid band saturation.
The flag that enables this is `--limit-rate` and is followed by the rate limit plus "k" for kbit or "m" for mbit.

```
wget --limit-rate 128k http://server.smth/ubuntu.iso
```