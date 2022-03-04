#!/bin/bash

while [ 1 ] 
do

    battery_level=$(acpi -b | grep -P -o "[0-9]+(?=%)")

    ac_power_full=$(acpi -b | grep -c "Full")

    ac_power_discharge=$(acpi -b | grep -c "Discharging")

    if [ $ac_power_full -eq 1 -a $battery_level -eq 100 ]
    then
        notify-send "Battery Full" -u low
    fi

    if [ $ac_power_discharge -eq 1 -a $battery_level -lt 5 ]
    then
        notify-send "Battery Low" -u low
    fi

    sleep 15

done
