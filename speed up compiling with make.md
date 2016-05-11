Speed up compiling with make

Supposing we have something quite big to compile and we have this powerful server
with many cores but the default make option is `-j 1` ( single threaded build).
Back in the day when computing power was quite low these builds would take hours but now a days 
these type of problems shouldn't exist anymore. 

To speed up building we use the `-j` that would parallelize building like 
```
make -j 4
```
The typical rule of thumb is <#cpus>*2 + 1 although it depends also on the makefile 
configuration of the code we're building as a higher `-j` attribute is more likely to show previously unknown dependencies.

