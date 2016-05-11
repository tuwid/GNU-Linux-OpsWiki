Linux User management 

To list all users you can use:

```
cut -d: -f1 /etc/passwd
```

To add a new user you can use:

```
sudo adduser new_username
```

or:

```
sudo useradd new_username
```

To remove/delete a user, first you can use:

```
sudo userdel username
```

Then you may want to delete the home directory for the deleted user account :

```
sudo rm -r /home/username
```

(Please use with caution the above command!)

To modify the username of a user:

```
usermod -l new_username old_username
```

To change the password for a user:

```
sudo passwd username
```

To change the shell for a user:

```
sudo chsh username
```

To change the details for a user (for example real name):
```
sudo chfn username
```
