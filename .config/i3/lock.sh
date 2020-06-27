#!/usr/bin/env bash

tmpbg="$HOME/pictures/wp/black-wallpaper-1.png"

# change the color ring colors to leave the middle of the feedback ring
# transparent and the outside to use either dark or light colors based on the 
PARAM=(--verifcolor=ffffff00 --insidecolor=ffffff00 --ringcolor=ffffff55 \
        --linecolor=ffffff00 --keyhlcolor=4e4073ff --ringvercolor=4e307300 \
        --separatorcolor=22222260 --insidevercolor=0000001c \
        --ringwrongcolor=acacac80 --insidewrongcolor=0000001c --wrongcolor=acacac80)

# lock the screen with the color parameters
i3lock "${PARAM[@]}" -i "$tmpbg"  --tiling
