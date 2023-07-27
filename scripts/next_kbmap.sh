#!/bin/bash
keyboard="~/keyboard"
sed -i "s/0/tmp/g; s/1/0/g; s/tmp/1/g" ~/.config/scripts/keyboard
KB=$(cat ~/.config/scripts/keyboard | grep "1" | awk -F, '{print $1}')
setxkbmap $KB

