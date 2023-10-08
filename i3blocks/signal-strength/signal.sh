#!/bin/bash
wifi_signal=$(iwconfig wlp0s20f3 | grep "Signal level" | awk '{print $4}')
percent_signal=$(echo "scale=0;(((${wifi_signal:1}+100)*100)/70)" | bc)
echo "  ${percent_signal}%"

