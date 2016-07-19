#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
xrdb ~/.Xresources
xrandr --output VGA-1 --mode 1024x768 --right-of LVDS-1 --output LVDS-1 --mode 1024x600
exec awesome
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
