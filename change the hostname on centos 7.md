How to change the Hostname on CentOS 7

The easiets way to change the hostname on CentOS 7 is to use the hostnamectl command.

First I will check the current hostname by running "hostnamectl status" on the shell of my server:

hostnamectl status

The output on my system is:

# hostnamectl status

    Static hostname: server1.example.com

Then I change the hostname with the set-hostname option of the hostnamectl command to server2.example.com

hostnamectl set-hostname server2.example.com

Afterwats I check with the command hostname and hostname -f if the hostname change has succeeded.

hostname

The result should be:

# hostname
server2.example.com
