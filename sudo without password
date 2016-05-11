

Executing commands with `sudo` without password

Often happens that we're in a testing environment and we need to issue commands with sudo
and we're prompted for our password every time (almost, well within the configured timeout)

So in case we need to execute command with sudo we could:
- set the sudoers group to execute commands without being prompted
- set it up only for our user

Below are both examples. We start by executing `visudo` and this enables us to edit the 
`/etc/sudoers` file and edit the following:
```
%sudo ALL=NOPASSWD: ALL
```
This enabled the feature for all the group 

To enable it only for our user we do 
```
OurUserName ALL=(ALL) NOPASSWD: ALL
```
