#!/usr/bin/env bash

EFIBOOTPATH=/boot/efi/loader/entries/

source $HOME/colors.sh
source $HOME/spinner.sh
NOCOLOR="\033[0m"

build_dir="$HOME/latest_kernel_build_$(hostname)_$(date '+%F')"

get_kernel=/usr/local/bin/secure_kernel_tarball


printf "\t\t\t\t\t ${Reverse}Lets build the new kernel${NOCOLOR} ..\n\n\n"


printf "Hostname: %s\nDate    : %s\nUptime  :%s\n\n"  "$(hostname -s)" "$(date)" "$(uptime)"



printf "\n\n Check the latest stable kernel version from ${Bright}${Blue}kernel.org${NOCOLOR} \n\n"

#kernel=`curl -sL https://www.kernel.org/finger_banner | grep '4.18' | awk -F: '{gsub(/ /,"", $0); print $2}'`
kernel=`curl -s https://www.kernel.org/ | grep -A1 'stable:' | grep -oP '(?<=strong>).*(?=</strong.*)' | grep 5.3`
printf "${Bright}${Green}$kernel${NOCOLOR} \n\n"

if [[ ! -d $build_dir ]];then
   mkdir -p $build_dir
fi   
cd $build_dir

pwd

printf "Get the kernel from ${Bright}${Blue}kernel.org${NOCOLOR} and this for the *stable* kernel \n\n"


#wget -c https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-$kernel.tar.xz

eval ${get_kernel} ${kernel}

if [[ $? == 0 ]];then
   
   printf "${Bright}${Green}SUCCESS${NOCOLOR} \n\n"
else
     printf "${Bright}${Red}FAIL${NOCOLOR} \n\n"
fi     

#printf "${Bright}${Yellow}Get the sign for the kernel${NOCOLOR} ...\n\n"

#wget -c https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-$kernel.tar.sign

#if [[ $? == 0 ]] ;then
  
#     printf "${Bright}${Green}SUCESS${NOCOLOR}\n\n"
#else
#    printf "${Bright}${Red}FAIL${NOCOLOR} \n\n"
#fi    

#printf "Get the ${Bright}${Cyan} asc file for verification ${NOCOLOR} ...\n\n"

#wget -c https://cdn.kernel.org/pub/linux/kernel/v4.x/sha256sums.asc


printf "${Bright}${Cyan} Decompress the downloaded kernel${NOCOLOR} ..."

unxz linux-$kernel.tar.xz

if [[ $? == 0 ]] ;then
  
     printf "${Bright}${Green}SUCESS${NOCOLOR}\n\n"
else
    printf "${Bright}${Red}FAIL${NOCOLOR}\n\n"
fi    


#printf "${Bright}${PowerBlue} Lets check the kernel signing${NOCOLOR}...\n\n"

#gpg2 --verify linux-$kernel.tar.sign

#sleep 5

#gpg2 --verify sha256sums.asc

#sleep 3

#if [[ $? == 0 ]] ;then
  
#     printf "${Bright}${Green}SUCESS${NOCOLOR}\n\n"
#else
#    printf "${Bright}${Red}FAIL${NOCOLOR}\n\n"
#fi    

printf "${Bright}${Yellow} Untar the kernel${NOCOLOR} ..."

tar -xvf linux-$kernel.tar


printf "${Bright}${Magenta} Get into the kernel tree and clean it${NOCOLOR} ..\n\n"

cd linux-$kernel

make clean && make mrproper


printf "${Bright}${PowderBlue} Now get the running kernel conf and build .config${NOCOLOR} \n\n"

zcat /proc/config.gz > .config

printf "${Bright}${White}Check the timestamp on the file for the sanity${NOCOLOR} \n\n"

ls -al .config

printf "${Bright}${Cyan} Lets do the config ,run make olddefconfig${NOCOLOR}\n\n"
make olddefconfig

printf "${Bright}${Green}Then make it${NOCOLOR} ...\n\n"

/usr/bin/time -f "\t\n\n Elapsed time: %E\n\n" make -j `getconf _NPROCESSORS_ONLN` LOCALVERSION=-`hostname`


if [ $? == 0 ];then

printf "${Bright}${Green}Done${NOCOLOR}\n\n"

else 

printf "${Bright}${Red}Error encountered${NOCOLOR}\n\n"

fi

printf "${Bright}${PowderBlue}Installing the modules${NOCOLOR} ..\n\n"

make modules_install

printf "\n\n ${Bright}${Magenta}Copying the build kernel to boot directory${NOCOLOR}\n\n"

cp arch/x86/boot/bzImage /boot/vmlinuz-$kernel

printf "${Bright}${Cyan} Cross check the item${NOCOLOR} ...\n\n"

ls -al /boot/vmlinuz-*
printf "\n\n ${Bright}${Yellow}Copy the System.map file to /boot dir${NOCOLOR}\n\n"

cp System.map /boot/System.map-$kernel

printf "${Bright}${LimeYellow} Copying the .config file to /boot dir${NOCOLOR} \n\n"

cp .config /boot/config-$kernel

printf "${Bright}${Yellow} Make sure we are in right directory ${NOCOLOR} ..\n\n"
cd /boot
pwd

printf "${Bright}${Cyan} Lets relink System.map,config,huge,generic and normal against the new kernel! ${NOCOLOR}... \n\n"
unlink System.map
ln -s Systeme.map-$kernel  System.map  

unlink config
ln -s config-$kernel config

unlink vmlinuz
ln -s vmlinuz-$kernel vmlinuz 

unlink vmlinuz-huge
ln -s vmlinuz-$kernel vmlinuz-huge

unlink vmlinuz-generic
ln -s vmlinuz-$kernel vmlinuz-generic

find . -maxdepth 1 -type l -ls

printf "${Bright}${Green}Done and looks good! ${NOCOLOR} \n\n"


printf "${Bright}${Yellow} Copying the image ot EFI directory${NOCOLOR} ....\n\n"

ln -s /boot/vmlinuz-$kernel /boot/vmlinuz-$kernel-$(hostname)
cp -v /boot/vmlinuz-$kernel-$(hostname) /boot/efi/EFI/slackware/

ls -al /boot/efi/EFI/slackware/*

printf "\n\n ${Bright}${PowderBlue} Fixing the menu entry of the loader ${NOCOLOR}....\n\n\n"

>$EFIBOOTPATH/Slackware.conf

echo "title Slackware" > $EFIBOOTPATH/Slackware.conf 
echo "linux /EFI/slackware/vmlinuz-$kernel-$(hostname)" >> $EFIBOOTPATH/Slackware.conf
echo "options root=PARTUUID=c186d095-432d-454c-96d4-daf54248d60b rw" >> $EFIBOOTPATH/Slackware.conf


printf "${Bright}${LimeYellow} Let see the entry to confirmation ${NOCOLOR}...\n\n\n"

cat $EFIBOOTPATH/Slackware.conf


printf "\n\n ${Bright}${Cyan} Fix the UEFI boot shell script... ${NOCOLOR}..\n\n\n"

echo "\EFI\slackware\vmlinuz-$kernel-$(hostname) root=PARTUUID=c186d095-432d-454c-96d4-daf54248d60b rw" > /boot/efi/EFI/slackware.nsh

cat /boot/efi/EFI/slackware.nsh


printf " ${Bright}${Magenta} Cleaning up the build directory ${NOCOLOR} .....\n\n"

(rm -rf $build_dir) &

spinner "$!" "Cleaning up...wait"

exit 0
