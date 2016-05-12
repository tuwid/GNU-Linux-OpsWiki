Pushing tags to a server

The git push command doesn’t automatically transfer your tags to the remote server.

You have to push a tag that you want to share by running git push remote [tagname].

For example:
```
$ git push origin v1.1.0
```
You can use the --tags option to push all of your tags to the remote server that are not already there.
```
$ git push origin --tags
```

