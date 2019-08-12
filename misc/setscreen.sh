#!/bin/bash

# Set screen to 1920x1080 resolution. Used when I can't select that option in settings. Seems to work for Gnome and Budgie.
# Found [here](https://askubuntu.com/questions/251375/cant-get-1920-x-1080-in-ubuntu-via-vmware)

xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode Virtual1 1920x1080
xrandr --output Virtual1 --mode 1920x1080