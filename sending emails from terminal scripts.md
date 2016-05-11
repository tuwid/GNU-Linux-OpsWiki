Sending emails from terminal / scripts

We can send emails from the terminal (or from inside scripts) by using `sendemail`

Firstly we set up some packages that we need for this:
```
apt-get install libio-socket-ssl-perl libnet-ssleay-perl sendemail
```
```
sendemail -f fromuser@gmail.com -t touser@domain.com \
    -u subject -m "message" -s smtp.gmail.com \ 
    -o tls=yes -xu gmailaccount -xp gmailpassword 
```