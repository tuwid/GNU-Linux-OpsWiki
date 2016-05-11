Downgrade a Package via apt-get

You can downgrade a package via apt-get.
If you have the version number, or the target release, apt-get supports choosing a particular version or target release.
```
sudo apt-get install <package-name>=<package-version-number> 
```
OR
```
sudo apt-get -t=<target release> install <package-name>
```
is the command to be run. This can be used to down-grade a package to a specific version.

You can list all available versions by doing:
```
apt-cache showpkg <package-name> 
```
As an alternative this:
```
apt-mark hold <package-name> 
```
"holds" the package at the current version, preventing automatic upgrades.