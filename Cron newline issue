Crontab newline issue

If you forget to add a newline at the end of the `crontab` file that wont work. 
In other words, the `crontab` file should always end with an empty line.

Below is the relevant section in the man pages for this issue (`man crontab` then skip to the end):

	   Although cron requires that each entry in a crontab end  in  a  newline
	   character,  neither the crontab command nor the cron daemon will detect
	   this error. Instead, the crontab will appear to load normally. However,
	   the  command  will  never  run.  The best choice is to ensure that your
	   crontab has a blank line at the end.

	   4th Berkeley Distribution      29 December 1993               CRONTAB(1)
