#!/bin/bash

REPORT="system-report.txt"

{
	echo "LINUX SYSTEM HEALTH REPORT"
	echo ""

	echo "Hostname: $(hostname)"
	echo ""

	echo "Kernal: $(uname -r)"
	echo ""

	echo "Disk usage:"
	df -h /
	echo ""

	echo "Memory usage:"
	free -h
	echo ""

	echo "Top 5 running processes by CPU usage:"
	ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

	echo ""
	echo "Report generated on: $(date)"

} > "$REPORT"

