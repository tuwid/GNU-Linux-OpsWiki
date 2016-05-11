Removing PPAs

We can use the `--remove` flag, similar to how the PPA was added:
```
sudo add-apt-repository --remove ppa:whatever/ppa
```

As a safer alternative, we can install `ppa-purge`:
```
sudo apt-get install ppa-purge
```

And then remove the PPA, downgrading gracefully packages it provided to packages provided by official repositories:
```
sudo ppa-purge ppa_name
```

This won't uninstall packages that were on the PPA but not on the official repositories. If we want to remove them, we should use `apt-get`:
```
sudo apt-get purge package_name
```

We can also remove PPAs by deleting the .list files from `/etc/apt/sources.list.d` directory then updating the repositories 
by 
```
apt-get update
```
