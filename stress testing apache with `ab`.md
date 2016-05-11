Stress testing apache with `ab`
ApacheBench (or ab tool) is tool for benchmarking and regression testing the web servers.

The simplest test you can do is to perform 1000 requests, 10 at a time (which approximately simulates 10 concurrent users getting 100 pages each - over the length of the test).

```
ab -n 1000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://www.example.com/
```

`-n` 1000 is the number of requests to make.

`-c 10` tells AB to do 10 requests at a time, instead of 1 request at a time, to better simulate concurrent visitors (vs. sequential visitors).

`-k` sends the KeepAlive header, which asks the web server to not shut down the connection after each request is done, but to instead keep reusing it.

Also sending the extra gzip header to deflate makes the text/html output 25%-75% - the effects of which should not be dismissed due to it's impact on the overall performance of the web server (i.e., can transfer 2x the data in the same amount of time, etc).