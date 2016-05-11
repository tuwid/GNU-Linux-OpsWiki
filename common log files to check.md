Common log files to check 

Here is a list of some of the common log files and what they contain:

	/var/log/messages | /var/log/syslog : General message and system related stuff
	/var/log/auth.log : Authenication logs.
	/var/log/kern.log : Kernel logs.
	/var/log/cron.log : Cron daemon logs.
	/var/log/Xorg.0.log : Log for the X server.
	~/.xsession-errors : Logs related to the last X session (and the one before that, in xsession-errors.old)

Anything related to the system can usually be found on these logs, except when we have an application 
specific like apache2 or nginx etc.

