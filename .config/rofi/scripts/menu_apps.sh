#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## browser : @adi1090x
## music : @adi1090x

rofi_command="rofi -location 1 -xoffset 0 -yoffset 27 -theme themes/menu/apps.rasi"

# Links
terminal=""
files="ﱮ"
editor=""
browser="爵"
music="阮"
settings="漣"
osrs="理"
slack="聆"
dba=""

# Variable passed to rofi
options="$terminal\n$files\n$editor\n$browser\n$music\n$osrs\n$slack\n$dba"

chosen="$(echo -e "$options" | $rofi_command -p "Most Used" -dmenu -selected-row 0)"
case $chosen in
    $terminal)
        termite &
        ;;
    $files)
        thunar &
        ;;
    $editor)
       code & 
        ;;
    $browser)
        vivaldi-stable &
        ;;
    $music)
        spotify &
        ;;
    $osrs)
        runelite-launcher &
        ;;
    $slack)
        slack &
        ;;
    $dba)
        datagrip &
        ;;
esac

