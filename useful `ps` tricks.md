Useful `ps` tricks 

ps -ef 

ps -f -u wwwrun,postfix

Often ps is used with grep like “ps -aux | grep command” to get the list of process with the given command.

But ps command itself has an option to achieve the same. The following example shows that all the processes which has tatad.pl in its command execution.


ps -e -o pid,args --forest

forest 


ps aux --sort pmem