```bash
#!/bin/bash

REPORT="system-report.txt"

{
    echo "======================================"
    echo "       LINUX SYSTEM HEALTH REPORT"
    echo "======================================"
    echo ""

    echo "Report Generated: $(date)"
    echo ""

    echo "Hostname:"
    hostname
    echo ""

    echo "Kernel Version:"
    uname -r
    echo ""

    echo "System Uptime:"
    uptime -p
    echo ""

    echo "CPU Information:"
    lscpu | grep -E "Model name|CPU\(s\):" | head -n 2
    echo ""

    echo "Disk Usage:"
    df -h /
    echo ""

    echo "Memory Usage:"
    free -h
    echo ""

    echo "Top 5 Running Processes by CPU Usage:"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
    echo ""

    echo "======================================"
    echo "       END OF SYSTEM REPORT"
    echo "======================================"

} > "$REPORT"

echo "System report generated successfully!"
echo "Saved to: $REPORT"
```
