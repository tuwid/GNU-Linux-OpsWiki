What is `2>&1` in the shell ?

You can often see `2>&1` at the end of commands. That is a handy way to supress the output and only display errors.

Splitting it out is `1` is `stdout`. `2` is `stderr`.

Here is one way to remember this construct:
at first, `2>1` may look like a good way to redirect stderr to stdout. However, it will actually be interpreted as "redirect stderr to a file named 1". & indicates that what follows is a file descriptor and not a filename. 
So the construct becomes: `2>&1`.
