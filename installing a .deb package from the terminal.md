Installing a .deb package from the terminal

Although its not quite recommended as it might cause dependency issues 
often we're stuck with files that we need to install so the way of doing it is:
```
sudo dpkg -i DEB_PACKAGE
```
If dpkg reports an error due to dependency problems, we can run `sudo apt-get install -f` to download the missing dependencies and configure everything. If that reports an error, we'll have to sort out the dependencies

To remove such package:

```
sudo dpkg -r PACKAGE_NAME
```