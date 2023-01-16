#!/bin/bash
# default monitor is LVDS1
MONITOR=eDP

# functions to switch from LVDS1 to VGA and vice versa
function ActivateVGA {
    echo "Switching to HDMI-A-1-0"
    # xrandr --output HDMI-A-1-0 --mode 1920x1080 --rate 165 --output eDP --off
    xrandr --output HDMI-A-1-0 --mode 1920x1080 --auto --output eDP --off
    MONITOR=HDMI-A-1-0
}
function DeactivateVGA {
    echo "Switching to eDP"
    xrandr --output HDMI-A-1-0 --off --output eDP --auto
    MONITOR=eDP
}

# functions to check if VGA is connected and in use
function VGAActive {
    [ $MONITOR = "HDMI-A-1-0" ]
}
function VGAConnected {
    ! xrandr | grep "^HDMI-A-1-0" | grep disconnected
}

# actual script
while true
do
    if ! VGAActive && VGAConnected
    then
        ActivateVGA
    fi

    if VGAActive && ! VGAConnected
    then
        DeactivateVGA
    fi

    sleep 1s
done
