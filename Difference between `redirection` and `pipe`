Difference between `redirection` and `pipe`

`Pipe` is used to pass output to another program or utility.
`Redirect` is used to pass output to either a file or stream.

Example: `thing1 > thing2` vs `thing1 | thing2`
```
thing1 > thing2
```
1 Your shell will run the program named thing1
2 Everything that thing1 outputs will be placed in a file called thing2. (Note - if thing2 exists, it will be overwritten)

If you want to pass the output from program thing1 to a program called thing2, you could do the following:
```
thing1 > temp_file && thing2 < temp_file
```
which would

1 run program named thing1
2 save the output into a file named temp_file
3 run program named thing2, pretending that the person at the keyboard typed the contents of temp_file as the input.

