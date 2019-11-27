#!/bin/bash

# shellcheck disable=SC2034
Black=$(tput setaf 0)
# shellcheck disable=SC2034
Red=$(tput setaf 1)
# shellcheck disable=SC2034
Green=$(tput setaf 2)
# shellcheck disable=SC2034
Yellow=$(tput setaf 3)
# shellcheck disable=SC2034
LimeYellow=$(tput setaf 190)
# shellcheck disable=SC2034
PowderBlue=$(tput setaf 153)
# shellcheck disable=SC2034
Blue=$(tput setaf 4)
# shellcheck disable=SC2034
Magenta=$(tput setaf 5)
# shellcheck disable=SC2034
Cyan=$(tput setaf 6)
# shellcheck disable=SC2034
White=$(tput setaf 7)
# shellcheck disable=SC2034
Bright=$(tput bold)
# shellcheck disable=SC2034
Normal=$(tput sgr0)
# shellcheck disable=SC2034
Blink=$(tput blink)
# shellcheck disable=SC2034
Reverse=$(tput smso)
# shellcheck disable=SC2034
Underline=$(tput smul)
# shellcheck disable=SC2034
Reg=$(tput sgr0)


colors256() {
	local c i j

	printf "Standard 16 colors\n"
	for ((c = 0; c < 17; c++)); do
	        printf "|%s%3d%s" "$(tput setaf "$c")" "$c" "$(tput sgr0)"
	done
	printf "|\n\n"

	printf "Colors 16 to 231 for 256 colors\n"
	for ((c = 16, i = j = 0; c < 232; c++, i++)); do
	        printf "|"
	        ((i > 5 && (i = 0, ++j))) && printf " |"
	        ((j > 5 && (j = 0, 1)))   && printf "\b \n|"
	        printf "%s%3d%s" "$(tput setaf "$c")" "$c" "$(tput sgr0)"
	done
	printf "|\n\n"

	printf "Greyscale 232 to 255 for 256 colors\n"
	for ((; c < 256; c++)); do
	        printf "|%s%3d%s" "$(tput setaf "$c")" "$c" "$(tput sgr0)"
	done
	printf "|\n"
}

