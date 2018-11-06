#!/bin/sh

# enables click on tapping
# needs to be executed as root
# takes effect on reboot

touch /etc/X11/xorg.conf.d/99-synaptics-overrides.conf

echo 'Section  "InputClass"
    Identifier  "touchpad overrides"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lmr"
EndSection' >> /etc/X11/xorg.conf.d/99-synaptics-overrides.conf
