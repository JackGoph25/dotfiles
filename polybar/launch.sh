#! /bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID donaurelius polybar >/dev/null; do sleep 1; done

# Launch bar
polybar primary --config="~/.config/polybar/config.ini" &
polybar secondary --config="~/.config/polybar/config.ini" &
nm-applet & #launch wifi applet
bspc config ignore_ewmh_struts true
