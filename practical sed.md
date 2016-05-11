Intro to `sed`

sed (stream editor) is a Unix utility that parses and transforms text, using a simple, compact programming language. 

Simple replacing example:
```
sed s/foo/bar/ old_file > new_file
```

We can actually test this directly:
```
echo foo | sed s/foo/bar/
```

and it will output "bar"

By default this:
```
sed s/foo/bar/ old_file > new_file
```

will only substitute one instance that it finds per line.
If we want a specific number of replaces (like 5) per line we do 

```
sed s/foo/bar/5 old_file > new_file
```

To replace anything we use the `g` flag:

```
sed s/foo/bar/g old_file > new_file
```

We can extend the conditions as to substitute "foo" with "bar" ONLY for lines which contain "baz"

```
sed '/baz/s/foo/bar/g' old_file > new_file
```

Or to substitute "foo" with "bar" EXCEPT for lines which contain "baz"

```
sed '/baz/!s/foo/bar/g' old_file > new_file
```

To delete blank lines 
```
sed '/^$/d' old_file > new_file
```
