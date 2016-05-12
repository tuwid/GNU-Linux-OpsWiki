Execute a command without saving it in the history


Prepending one or more spaces to your command won't be saved in history.

Useful for passwords (those long mysql connections..) on the commandline.
For example:
```
root@bsfw3-1:~# echo 1 
1
root@bsfw3-1:~#  echo 2
2
root@bsfw3-1:~# echo 3
3
root@bsfw3-1:~# history
  ...
  501  echo 1 
  502  echo 3
  503  history
```
