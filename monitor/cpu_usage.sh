#!/bin/bash
# monitor/cpu_usage.sh

# Get current CPU usage as a percentage (user + system time)
cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
printf "CPU Usage: %.2f%%\n" "$cpu"

