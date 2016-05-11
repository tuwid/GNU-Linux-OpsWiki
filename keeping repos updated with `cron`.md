Keeping repos updated with `cron`

Its a good practice to keep your repositories updated. 
Here I'm not talking about packages, I mean repositories. Keeping your repositories updated shortens your update time when you need to do upgrades and you could check for upgrades directly. One good approach to keep your repositories updates it updating them every day via cron.

Start by opening your crontab file by doing 

```
crontab -e
```

and append 
```
1 1 * * * apt-get update
```

This will only update the repos, leaving the system ready to be updated