Restarting vs gracefully reloading apache's configuration

Depending on the situation instead of wanting to restart Apache we often want to gracefully reload its configuration.

This is done by issuing:
```
sudo apache2ctl graceful
```
or
```
sudo /etc/init.d/apache2 reload
```

Gracefully reloading is a bit faster, and there's no downtime. 

Keep in mind that if your apache configuration files contain an error, the server will silently exit without printing any error messages to the console.
