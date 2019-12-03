#!/usr/bin/env bash

spinner()
{
local pid=$1
local delay=0.175
local spinstr='|/-\'
local infotext=$2
while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
local temp=${spinstr#?}
printf " %s %c " "$infotext" "$spinstr"
local spinstr=$temp${spinstr%"$temp"}
sleep $delay
printf "\b\b\b"
for i in $(seq 1 ${#infotext}); do
printf "\b"
done
done
printf " \b\b\b\b"
}
#($@ 2>/dev/null) &
#("$@") &
#spinner "$!"  "Checking..." 
