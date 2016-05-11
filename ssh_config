Aliasing ssh connections

If we work remotely a lot its very convenient to alias ssh connections.

So instead of:
```
ssh -i ~/.ssh/custom_id_rsa root@213.133.109.135 -p 31415
```
We start by editing this file:
```
nano .ssh/config
```
And add the following
```
Host lisa
IdentityFile ~/.ssh/custom_id_rsa
HostName 213.133.109.135
User root
Port 31415
```

After that we just ssh by alias as :
```
ssh lisa
```

This way we can add as many aliases as we want 