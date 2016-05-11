Setting up password-less authentication

To set up password-less authentication we start by generating a pair of keys(if we dont have one already)
```
$ ssh-keygen
```
Then we issue:
```
ssh-copy-id -i root@ip_address
```
This is used to copy our public key into the authorized_hosts of the other machine and it will once ask for the password of the host system

If everything went well we should be able to enter on the remote system directly by doing:
```
$ ssh root@ip_address
```
