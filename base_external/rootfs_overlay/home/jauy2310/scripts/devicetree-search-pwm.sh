#!/bin/sh
dtc -I fs -O dts /sys/firmware/devicetree/base | grep "pwm@* {" -A 10
