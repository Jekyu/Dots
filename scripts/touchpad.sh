#!/bin/bash

device=$(xinput list | grep -i touchpad | grep -o 'id=[0-9]*' | cut -d= -f2)

state=$(xinput list-props "$device" | grep "Device Enabled" | awk '{print $4}')

if [ "$state" -eq 1 ]; then
    xinput disable "$device"
    notify-send "Touchpad apagado"
else
    xinput enable "$device"
    notify-send "Touchpad encendido"
fi
