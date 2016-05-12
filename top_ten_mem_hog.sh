#!/bin/bash

ps aux | awk '{if ((NR > 1)&&($5!=0)) print $1, $2, $3, $5, $11}' | sort -k4nr | head -n 10
