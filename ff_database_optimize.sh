#!/bin/bash
profile_dir="$HOME/.mozilla/firefox/*"

echo " Killing all running firefox instances for database clean up..."

pkill firefox

echo " ... Done"

echo " getting into the profile dir ..."

#cd $profile_dir

#pwd
for i in $profile_dir
do
echo " present size of the database is : "

du -shc $profile_dir/*.sqlite

echo " Now running the cleanup...."

#find $HOME/.mozilla/ \( -name "*.sqlite" \) -exec sqlite3  {} "vacuum" \;

/usr/bin/sqlite3 $i VACUUM 

echo " Now the size of the present database is :"

du -shc $profile_dir/*.sqlite

echo " Kindly start firefox now .....performance will be much improved"

echo " Limiting firefox cpu usage by 50 percent .."

# Install cpulimit in the system from here http://cpulimit.sourceforge.net/

/usr/bin/cpulimit -l 200  firefox

done
