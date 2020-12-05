#!/bin/bash

temp=$(sensors | grep -Po 'Tdie:\W*\K([0-9\.]+)')
color=$(python3 ~/.config/polybar/getcolor.py $temp)
echo -e "%{u$color}%{+u}%{F$color} %{F-} $temp°C "
