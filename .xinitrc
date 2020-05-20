#!/bin/sh

xrdb "$XDG_CONFIG_HOME/X11/Xresources"
setxkbmap -option caps:super
xbindkeys &
picom -CGb --config "$XDG_CONFIG_HOME/picom/picom.conf"
dunst -config "$XDG_CONFIG_HOME/dunst/dunstrc" &

xset +fp "$XDG_DATA_HOME/fonts"
xset fp rehash

export XDG_SESSION_TYPE=X11
sxhkd -c "$XDG_CONFIG_HOME/berry/sxhkdrc" &
exec berry -d -f 'Dina-9' > /tmp/log.txt 2>&1
