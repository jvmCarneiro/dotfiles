#!/bin/bash
read < "/sys/class/backlight/acpi_video0/brightness" brightness
var1=10
brightness=`expr $brightness + $var1`
echo $brightness > /sys/class/backlight/acpi_video0/brightness
