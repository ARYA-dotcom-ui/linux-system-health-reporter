# Linux System Health Reporter

A beginner-friendly Bash project that collects basic system information from a Linux computer and generates a readable text report.

## About the Project

Linux System Health Reporter is a simple system monitoring tool built using Bash scripting.

It collects essential system information, including hostname, kernel version, disk usage, memory usage, and CPU-intensive processes, and saves the results in a text file.

## Features

- Displays the system hostname
- Displays the Linux kernel version
- Shows disk usage
- Shows memory usage
- Lists the top 5 processes by CPU usage
- Saves the output to a text file

## Requirements

- A Linux operating system
- Bash
- Standard Linux utilities:
  - `hostname`
  - `uname`
  - `df`
  - `free`
  - `ps`
- Git for version control

## Project Structure

```text
linux-system-health-reporter/
│
├── system_report.sh
├── system-report.txt
└── README.md
```

## How to Run

1. Open a terminal.
2. Navigate to the project directory.
3. Make the script executable:

   ```bash
   chmod +x system_report.sh
   ```

4. Run the script:

   ```bash
   ./system_report.sh
   ```

5. Open the generated report:

   ```bash
   cat system-report.txt
   ```

## Learning Objectives

This project helped me practice:

- Bash scripting
- Linux system commands
- File handling
- System monitoring
- Git and GitHub

## Future Improvements

- Add CPU usage information
- Include system uptime
- Add timestamps to reports
- Generate reports in CSV format
- Add automated system health checks

## Author

Arya
