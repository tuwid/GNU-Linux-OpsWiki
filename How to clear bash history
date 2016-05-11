Clear bash history

If not altered every command that we execute on a linux system gets stored in the .bash_history file. 
That file is in the home directory of the user executing the command. 
If we need to clear our current history we do : 
```
cat /dev/null > ~/.bash_history
history -c
```

To clear another user's file we do the same to his/her file: 
```
cat /dev/null > /home/<user>/.bash_history
```

Keep in mind that we have to be logged in as root user to clear another user's bash_history file or we issue it with the sudo command
```
sudo cat /dev/null > /home/<user>/.bash_history
```