#!/bin/bash

EFIBOOTPATH=/boot/efi/loader/entries
source $HOME/colors.sh
source $HOME/spinner.sh
NOCOLOR="\033[0m"
build_dir=/var/tmp/kernel/latest_kernel_build_`hostname`_`date '+%F'`
get_kernel=/usr/local/bin/secure_kernel_tarball 

printf "${Reverse}Lets build the new kernel${NOCOLOR}  ..... \n\n"

printf "Hostname: %s\nDate    : %s\nUptime  :%s\n\n"  "$(hostname -s)" "$(date)" "$(uptime)"

printf " Check the latest stable kernel version from ${Bright}${Blue}kernel.org${NOCOLOR} \n\n"
#kernel=`curl -sL https://www.kernel.org/finger_banner | grep '4.18' | awk -F: '{gsub(/ /,"", $0); print $2}'`
kernel=$(curl -s https://www.kernel.org/ | grep -A1 'stable:' | grep -oP '(?<=strong>).*(?=</strong.*)' | grep 5.3) 
printf "${Bright}${Green}$kernel${NOCOLOR} \n"

printf "\n Pre-flight check...basic build tools are in the system for kernel build...\n"

ver_linux

if [[ ! -d $build_dir ]];then
   mkdir -p $build_dir
fi   

cd $build_dir

printf "Get the kernel from ${Bright}${Blue}kernel.org${NOCOLOR} and this for the ${Underline}*stable* kernel${NOCOLOR} \n\n\n"


#wget -c https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-$kernel.tar.xz

#printf "Get the ${Bright}${LimeYellow}sign for the kernel${NOCOLOR} ...\n\n"

#wget -c https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-$kernel.tar.sign

#printf "Get the ${Bright}${Cyan} asc file for verification ${NOCOLOR} ...\n\n"

#wget -c https://cdn.kernel.org/pub/linux/kernel/v4.x/sha256sums.asc

eval ${get_kernel} ${kernel}

printf "\n\n ${Bright}${Magenta}  Make sure we are in the right directory ${NOCOLOR} ...\n\n"

pwd


printf "${Bright}${Magenta} Decompress the downloaded kernel${NOCOLOR} ...\n\n\n"

unxz linux-$kernel.tar.xz


#printf "${Bright}${Green} Lets check the kernel signing${NOCOLOR}...\n\n"

#gpg2 --verify linux-$kernel.tar.sign

#sleep 3

#gpg2 --verify sha256sums.asc

#sleep 3


printf "${Bright}${Cyan} Untar the kernel${NOCOLOR} ...\n\n"

tar -xvf linux-$kernel.tar 


if [[ $? -eq 0 ]]; then
printf "${Bright}${Green} Looks alright ..go ahead ${NOCOLOR} \n\n " 
else
printf "${Bright}${Red}Nope missing tool ,abort! ${NOCOLOR} \n\n"
fi

printf "\n\n ${Bright}${Yellow} Get into the kernel tree and clean it ${NOCOLOR} ..\n\n\n"

cd linux-$kernel

printf "\n\n ${Bright}${PowderBlue} make clean && make mrproper ${NOCOLOR} \n\n"

make clean && make mrproper


printf "${Bright}${LimeYellow} Now get the running kernel conf and build .config ${NOCOLOR} \n\n"

printf "\n\n${Bright}${Blue} zcat /proc/config.gz > .config ${NOCOLOR}\n\n\n"
zcat /proc/config.gz > .config


printf "${Bright}${Green} Lets do the config ...run make olddefconfig ${NOCOLOR}\n\n\n"
printf "\n\n${Bright}${Green} make olddefconfig ${NOCOLOR}\n\n\n"

make  ARCH=x86_64 olddefconfig 

printf "${Bright}${Cyan} Then make it ${NOCOLOR} ...\n\n\n"

printf "\n\n ${Bright}${PowderBlue} time make -j `getconf _NPROCESSORS_ONLN` LOCALVERSION=-`hostname`${NOCOLOR} \n\n"


/usr/bin/time -f "\t\n\n Elapsed Time : %E \n\n"  make ARCH=x86_64 -j `getconf _NPROCESSORS_ONLN` LOCALVERSION=-`hostname` | /usr/bin/ts 


if [ $? == 0 ]
then

printf "${Bright}${Green}Done${NOCOLOR} \n\n"

else 

printf "${right}${Red}Error encountered${NOCOLOR} \n\n"

fi

printf "${Bright}${Yellow} Installing the modules${NOCOLOR} ...\n\n"

printf "\n\n${Bright}${Magenta} make modules_install${NOCOLOR}\n\n\n"

make  modules_install |  /usr/bin/ts 

printf "${Bright}${LimeYEllow} Copying the build kernel to boot directory${NOCOLOR} \n\n"

printf "${Bright}${Green} make install${NOCOLOR}\n\n\n"

make install  



printf "\n\n ${Bright}${Yellow} Fixing the EFI boot entry by copying the kernel to ESP place ${NOCOLOR}...\n\n"

cp /boot/vmlinuz-$kernel-`hostname` /boot/efi/EFI/Gentoo/

>$EFIBOOTPATH/Gentoo.conf

echo "title Gentoo" > $EFIBOOTPATH/Gentoo.conf
echo "linux /EFI/Gentoo/vmlinuz-$kernel-`hostname`" >> $EFIBOOTPATH/Gentoo.conf
echo "options root=PARTUUID=1dc3b5eb-dc49-4d74-9546-f83c55f60d79 rw" >> $EFIBOOTPATH/Gentoo.conf

cat $EFIBOOTPATH/Gentoo.conf


printf "\n\n ${Bright}${Cyan} Fix the UEFI boot shell script... ${NOCOLOR} \n\n"

echo "\EFI\Gentoo\vmlinuz-$kernel-Gentoo  root=PARTUUID=1dc3b5eb-dc49-4d74-9546-f83c55f60d79 rw" > /boot/efi/EFI/gentoo.nsh


cat /boot/efi/EFI/gentoo.nsh

printf "\n\n ${Bright}${Cyan}Lets clean up the build directory ${NOCOLOR} .....\n\n\n"

cd ..

(rm -rf $build_dir) &

spinner "$!" "Cleaning...wait.."


exit 0
