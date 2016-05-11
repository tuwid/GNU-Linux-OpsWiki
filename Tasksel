Tasksel

`Tasksel` is a software installation application that is an integral part of the Debian installer and works under Ubuntu Linux too. 
It groups some packages by tasks and offers the user an easy way to install the packages for that task. It provides the same functionality as using conventional meta-packages.

The option --list-tasks list on screen the tasks (packages) that would be displayed in the tasksel TUI (text user interface). You can use it as follows:
```
tasksel --list-tasks
```	
And abit of the output should be:
```
u server	Basic Ubuntu server
u dns-server	DNS server
u edubuntu-server	Edubuntu server
i lamp-server	LAMP server
u mail-server	Mail server
i openssh-server	OpenSSH server
u postgresql-server	PostgreSQL database
...
u virt-host	Virtual Machine host
```
You can issue the tasksel command directly and check the services that you need to be installed or use the carret (`^`)
with `apt-get` like below:
```
sudo apt-get install openssh-server^
```