Removing old kernels in debian based systems

Firstly we need to check our current kernel. We do this by issuing:
```
uname -r 
```

Keep in mind to NOT REMOVE THIS KERNEL!

Next, type the command below to view/list all installed kernels on your system.

dpkg --list | grep linux-image 

Now we find all the kernels that are lower than our current kernel. Figuring out which kernels to remove, we continue below by removing them running the commands below to remove the kernel you selected.
```
sudo apt-get purge linux-image-x.x.x.x-generic 
```

After we're finished with that we update our grup configuration:
```
sudo update-grub2 
```

And we've successfully removed the old kernels. 
Keep in mind that its a good practice to keep the last two old kernels just to be safe.