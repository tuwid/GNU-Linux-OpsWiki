Assign function keys to your frequent commands

bind '"<ctrl+v><functionKey>":"command\n"'



This is a common use of bind. Hitting any key after will output the key's character sequence. This makes possible using it into a bind command. So pressing ctrl+v and then F2 will output "^[[12~", once binded every time you'll press the function key F2 it will execute your command. Added the \n to make it execute it as well.




net rpc shutdown -I ipAddressOfWindowsPC -U username%password

 Shutdown a Windows machine from Linux

This will issue a shutdown command to the Windows machine. username must be an administrator on the Windows machine. Requires samba-common package installed. Other relevant commands are:

net rpc shutdown -r : reboot the Windows machine

net rpc abortshutdown : abort shutdown of the Windows machine

Type:

net rpc

to show all relevant commands




Bell when it comes ip
ping -i 5 -a IP_address

Waiting for your server to finish rebooting? Issue the command above and you will hear a beep when it comes online. The -i 60 flag tells ping to wait for 60 seconds between ping, putting less strain on your system. Vary it to your need. The -a flag tells ping to include an audible bell in the output when a package is received (that is, when your server comes online).



Stuff you use often : 
history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head


getconf LONG_BIT
32 bits or 64 bits?
Easy and direct way to find this out.


ora ne cep te terminalit 
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &



rm !(*.foo|*.bar|*.baz)

.ssh/config dhe ssh-copy-id username@hostname

hudhi i sy RAMit:
sudo dd if=/dev/mem | cat | strings



mkdir -p


rename 'y/ /_/' *


watch -t -n1 "date +%T|figlet"

du -s * | sort -n | tail

ssh-keygen -R <the_offending_host>

ssh -t remote_host screen -r

dpkg -S /usr/bin/ls

