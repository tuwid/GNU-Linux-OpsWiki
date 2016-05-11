Add a directory to your $PATH

PATH is an environmental variable in Linux and other Unix-like operating systems that tells the shell which directories to search for executable files (i.e., ready-to-run programs) in response to commands issued by a user.

To do this you edit the `.bashrc` file in your home directory and append the following line (chaining the existing path additions) :
```
export PATH=/path/to/dir:$PATH
```

For example, to add the directory /usr/sbin, the following would be used:
```
PATH="/usr/sbin:$PATH"
```

You will need to source your .bashrc or logout/login (or restart the terminal) for the changes to take effect.
Sourcing executes the file that it was given as a parameter. 
To source your `.bashrc`, simply type
```
$ source ~/.bashrc
```
witch is basically
```
. ~/.bashrc
```