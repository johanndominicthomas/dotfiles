#!/bin/sh
if pgrep -x blueman-manager >/dev/null; then
    notify-send 'Bluetooth' 'Blueman is  already running'
else
    blueman-manager
fi
