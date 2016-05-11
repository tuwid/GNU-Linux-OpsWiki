Disable SSH password authentication 

Any system administrator that checks the system logs often will find that the most common of things when it comes to `ssh` is brute-forcing.

To fix this issue permanently we must disable password authentication.

You do this by firs setting up login by certificate. 
Copy the contents of your ~/.ssh/id_rsa.pub into the ~/.ssh/authorized_keys file on the server, or run ssh-copy-id [server IP address]

After that open /etc/ssh/sshd_config, find the line that says `#PasswordAuthentication yes`, and change it to `PasswordAuthentication no`. 

Restart the SSH server daemon to apply the change 
```
sudo service ssh restart
```

Now, the only possible way to SSH into the server is to use a key that matches a line in ~/.ssh/authorized_keys. Using this method, brute force attacks drop because even if they guess any password, it will be rejected. 

Brute-forcing a public/private key pair is impossible with today's technology.