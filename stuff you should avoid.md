Deadly stuff you should try (absolutely to avoid) in linux!

delete everything 

$ sudo rm -rf /

fork bomb

$ :(){:|:&};:

format hard disk

$ sudo mkfs.ext3 /dev/sda

fill hard disk drive with junk

$ sudo yes > /dev/sda
$ sudo dd if=/dev/null of=/dev/sda
$ sudo dd if=/dev/urandom of=/dev/sda

delete /boot directory
$ sudo rm -rf /boot/

move everything to null

$ mv ~/* /dev/null
$ mv /home/username/* /dev/null

delete configuration files

$ sudo find / -iname "*.conf" -exec rm -rf  {} \;

give access to everybody

$ sudo chmod -R 777 /

remove access to anyone

$ sudo chmod -R 000 /
# or
$ sudo chown -R nobody:nobody /