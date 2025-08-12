#!/bin/bash
# Simple Interest Calculator with Menu and ASCII Art
# Author: Saiful Miqdar
# Purpose: Calculate simple interest with user input validation and menu options

# ASCII Art Banner
echo "==================================="
echo "   SIMPLE INTEREST CALCULATOR      "
echo "           by Saiful Miqdar        "
echo "==================================="

# Function to calculate simple interest
calculate_interest() {
    echo "Enter the principal amount (positive number):"
    read p
    while ! [[ "$p" =~ ^[0-9]+([.][0-9]+)?$ ]] || (( $(echo "$p <= 0" | bc -l) )); do
        echo "Invalid input. Please enter a positive number for principal:"
        read p
    done

    echo "Enter the annual rate of interest (in %):"
    read r
    while ! [[ "$r" =~ ^[0-9]+([.][0-9]+)?$ ]] || (( $(echo "$r < 0" | bc -l) )); do
        echo "Invalid input. Please enter a non-negative number for rate of interest:"
        read r
    done

    echo "Enter the time period in years (positive number):"
    read t
    while ! [[ "$t" =~ ^[0-9]+([.][0-9]+)?$ ]] || (( $(echo "$t <= 0" | bc -l) )); do
        echo "Invalid input. Please enter a positive number for time period:"
        read t
    done

    # Calculate simple interest = (P * R * T) / 100
    s=$(echo "scale=2; $p * $r * $t / 100" | bc)
    echo "-----------------------------------"
    echo "Principal Amount: $p"
    echo "Rate of Interest: $r%"
    echo "Time Period: $t years"
    echo "Simple Interest: $s"
    echo "-----------------------------------"
}

# Menu function
show_menu() {
    echo ""
    echo "Select an option:"
    echo "1) Calculate Simple Interest"
    echo "2) Exit"
    echo -n "Enter your choice [1-2]: "
}

# Main loop
while true; do
    show_menu
    read choice
    case $choice in
        1)
            calculate_interest
            ;;
        2)
            echo "Thank you for using the calculator. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please enter 1 or 2."
            ;;
    esac
done
