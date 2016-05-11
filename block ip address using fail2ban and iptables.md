Block IPs using `Fail2ban`

Fail2ban scans log files for various services ( SSH, FTP, SMTP, Apache, etc., ) 
and bans the IP that makes too many password failures and updates the firewall rules to reject these ip addresses.
Main purpose of Fail2ban is to prevent brute force login attacks.

To install fail2ban:
```
apt-get install fail2ban
```
All Fail2ban configuration files are located under the /etc/fail2ban directory.

The `/etc/fail2ban/jail.conf` file contains service configurations. This  is broken up into different contexts. The DEFAULT settings apply to all sections.
Example of a default:
```
[DEFAULT]
ignoreip = 127.0.0.1
maxretry = 5
findtime = 600
bantime = 600
```
We add/enable ssh:
```
[ssh]
enabled = true
port	= ssh
filter	= sshd
logpath  = /var/log/auth.log
action = iptables
```

Here `action = iptables` refers to `/etc/fail2ban/action.d/iptables.conf` thats basically a drop action with IPtables
To stop/start fail2ban service:
```
# /etc/init.d/fail2ban stop
# /etc/init.d/fail2ban start
```