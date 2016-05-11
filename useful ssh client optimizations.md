Useful ssh client optimizations 

It can come in hand to make a few optimizations on your ssh configuration (`~/.ssh/config`) for example to use compression (which is helpful with scp over low-bandwidth connections), to avoid dropped connections in certain network environments and multiplex channels to the same server with a local control file:
```
TCPKeepAlive=yes
ServerAliveInterval=15
ServerAliveCountMax=6
Compression=yes
ControlMaster auto
ControlPath /tmp/%r@%h:%p
ControlPersist yes
```

For more info on additional options check 
```
man ssh_config
```