#!/bin/bash

kernel_update=/usr/local/bin/ubuntu-mainline-kernel.sh
present_kernel=`/usr/local/bin/ubuntu-mainline-kernel.sh -c | grep installed | tr -d [:alpha:] | tr -d :`
new_kernel=`/usr/local/bin/ubuntu-mainline-kernel.sh -c | gawk -F: ' { print $2 } ' | grep -v -`
source /home/bhaskar/colors.sh
NOCOLOR="\033[0m"

printf "\n\n\b\t\t\t ${Reverse} Updating the kernel.... ${NOCOLOR} \n\n\n"

printf "Hostname: %s\nDate    : %s\nUptime  :%s\n\n"  "$(hostname -s)" "$(date)" "$(uptime)"
printf "\n\n\n"

#printf "Get the latest kernel version from ${Blue}kernel.org \n\n\n"

#kernel=`curl -s https://www.kernel.org/ | grep -A1 'stable:' | grep -oP '(?<=strong>).*(?=</strong.*)'| grep 4.16`
#printf "${Bright}${Green} $kernel ${NOCOLOR} \n"


unbuffer $kernel_update -c | /usr/bin/ts 


if [[ "$present_kernel" == "$new_kernel" ]] ; then

	printf "${Bright}${Red} Do not update..kernels are same ${NOCOLOR}.\n\n\n "
	exit 1
else
      printf "\n\n\n ${Bright}${Green} We have new kernel,please install it... ${NOCOLOR}.\n\n\n"
fi



unbuffer $kernel_update -i $kernel --yes | /usr/bin/ts 



printf "\b\t\t\t ${Reverse}Please fix the EFI bootloader entry${NOCOLOR}......\n"

cd /boot/efi/a*/*
pwd
cp -v * /boot/efi/EFI/ubuntu/

 printf "\n\n Clear the /bbot/efi directory and config files from /boot/efi/modules/entries dir"


exit 0
