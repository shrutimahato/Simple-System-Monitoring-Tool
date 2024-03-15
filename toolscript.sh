#!/bin/bash

# Function to check CPU usage
check_cpu_usage() {
    echo "CPU Usage:"
    top -bn1 | grep "Cpu(s)"
}

# Function to check memory usage
check_memory_usage() {
    echo "Memory Usage:"
    free -h
}

# Function to check disk usage
check_disk_usage() {
    echo "Disk Usage:"
    df -h
}

# Function to check network usage
check_network_usage() {
    echo "Network Usage:"
    netstat -i
}

# Main function to display menu and execute chosen options
main() {
    while true; do
        echo "System Monitoring Tool"
        echo "1. Check CPU Usage"
        echo "2. Check Memory Usage"
        echo "3. Check Disk Usage"
        echo "4. Check Network Usage"
        echo "5. Exit"
        read -p "Enter your choice: " choice

        case $choice in
            1) check_cpu_usage ;;
            2) check_memory_usage ;;
            3) check_disk_usage ;;
            4) check_network_usage ;;
            5) echo "Exiting..."; break ;;
            *) echo "Invalid choice. Please enter a valid option." ;;
        esac

        echo ""
    done
}

# Call the main function to start the program
main
