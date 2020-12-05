#!/bin/bash
sleep 1
scrot -u 'Screenshot_%Y-%m-%d-%S_$wx$h.png' -e 'mv $f ~/pictures ; viewnior ~/pictures/$f'

