Extracting the `public key` from the `private key`

The `-y` option of the ssh-keygen tool outputs the public key:
```
ssh-keygen -y -f ~/.ssh/id_rsa > ~/.ssh/id_rsa.pub
```

The comment of the public key is lost so you need to edit ~/.ssh/id_rsa.pub and append a comment to the first line with a space between the comment and key data. 

A truncated example of a public key:
```
ssh-rsa AAAA..../VqDjtS5 user@pc
```