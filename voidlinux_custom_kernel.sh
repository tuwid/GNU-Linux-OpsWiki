#!/usr/bin/env bash

source $HOME/colors.sh
TM="/usr/bin/time -f"
NOCOLOR="\033[m"
EFIBOOTDIR=/boot/efi/EFI/voidlinux/
EFIBOOTENTRY=/boot/efi/loader/entries/VoidLinux.conf

printf "Hostname: %s\nDate    : %s\nUptime  :%s\n\n"  "$(hostname)" "$(date)" "$(uptime)"

printf "${Bright}${Yellow} Checking the root space ${NOCOLOR} ...\n\n\n\n\n"

maxpoint="90"
per=`df / | awk 'END{print $5}' | tr -d %`
if  [ "$per" -le  "$maxpoint" ]; then

printf "${Bright}${Green}Ok...looks good...procced ${NOCOLOR} \n\n\n"

elif [ "$per" -gt "$maxpoint" ]; then

printf "${Bright}${Red}Not enough space...aborting! ${NOCOLOR} \n\n\n\n"
exit 1
fi

kernel=$(curl -s https://www.kernel.org/ | grep -A1 'stable:' | grep -oP '(?<=strong>).*(?=</strong.*)' | grep 5.2) 
printf "${Bright}${Green}$kernel${NOCOLOR} \n"


avil_kernel=$(xbps-query --regex -Rs '^linux[0-9.]+-[0-9._]+' | tail -n 1)

printf "${Bright}${Cyan} The latest stable kernel is $avil_kernel ${NOCOLOR} \n\n"

installed_kernel=$(uname -a | gawk '{ print $3 }')

printf "${bright}${Cyan} Installed kernel $installed_kernel ${NOCOLOR} \n\n"
#if [[ "$avil_kernel" -ne "$installed_kernel" ]];then

 #    printf "${Bright}${Green} Please proceed with new kernel install. ${NOCOLOR} \n\n"
#else
#    printf "${Bright}${Red} Updted kernel not available. ${NOCOLOR} \n\n"
#    exit 1
#fi    

printf "\n\n ${Reverse}${Bright}${Green} ################ Updating the KERNEL ################# ${NOCOLOR} \n\n"

  xbps-install -S --yes linux5.3


printf "${Bright}${Green} Fix the boot entry ....${NOCOLOR} \n\n"


cd /boot

ln -s  vmlinuz-"$kernel"_1  vmlinuz-$kernel-$(hostname)
cp -v vmlinuz-$kernel-$(hostname)  $EFIBOOTDIR

ln -s initramfs-"$kernel"_1.img  initramfs-$kernel-$(hostname).img
cp -v initramfs-$kernel-$(hostname).img  $EFIBOOTDIR



echo "title VoidLinux" > $EFIBOOTENTRY
echo "linux /EFI/voidlinux/vmlinuz-$kernel-$(hostname)" >> $EFIBOOTENTRY
echo "initrd /EFI/voidlinux/initramfs-$kernel-$(hostname).img" >> $EFIBOOTENTRY
echo "options root=PARTUUID=72789349-0382-4276-979d-4b293071e6b4 rw" >> $EFIBOOTENTRY


echo "\EFI\voidlinux\vmlinuz-$kernel-$(hostname)  root=PARTUUID=72789349-0382-4276-979d-4b293071e6b4 rw initrd=\EFI\voidlinux\initramfs-$kernel-$(hostname).img" > /boot/efi/EFI/voidlinux.nsh

exit 0
