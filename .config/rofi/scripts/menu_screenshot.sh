#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

rofi_command="rofi -theme themes/menu/screenshot.rasi"

# Options
screen=""
area=""
window=""

# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -p 'scrot' -dmenu -selected-row 1)"
case $chosen in
    $screen)
        sleep 1; scrot 'screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f ~/pictures ; viewnior ~/pictures/$f'
        ;;
    $area)
        scrot -s 'screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f ~/pictures ; viewnior ~/pictures/$f'
        ;;
    $window)
        sleep 1; scrot -u 'screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f ~/pictures ; viewnior ~/pictures/$f'
        ;;
esac

