# Simple Interest Calculator

![[Simple Interest Calculator Banner]([https://img.shields.io/badge/Author-Saiful%20Miqdar-blue?style=flat-square](https://i1.sndcdn.com/artworks-bbhKX94ncwayTyEb-WNNpfQ-t500x500.jpg)](https://i1.sndcdn.com/artworks-bbhKX94ncwayTyEb-WNNpfQ-t500x500.jpg)

## Overview

Welcome to the **Simple Interest Calculator** — a lightweight and interactive Bash script designed to help you quickly calculate simple interest based on user input. This tool features a user-friendly menu, input validation, and a neat ASCII art banner to make your command-line experience more enjoyable.

---

## Features

* Interactive **menu-driven interface** for easy navigation
* Validates user inputs to ensure **positive and valid numbers**
* Calculates simple interest accurately with **decimal support**
* Clean and informative output display showing all inputs and results
* Built entirely in Bash — no additional dependencies except `bc` for floating-point arithmetic
* Lightweight and ideal for learning basic shell scripting and finance calculations

---

## How It Works

The script asks for three inputs from the user:

1. **Principal amount (P)** — The initial amount of money invested or loaned
2. **Annual rate of interest (R%)** — The yearly interest rate as a percentage
3. **Time period (T)** — The duration in years for which the money is invested or borrowed

Then it calculates the simple interest using the formula:

```
Simple Interest = (P × R × T) / 100
```

The result is displayed with a summary of the inputs for easy verification.

---

## Usage Instructions

1. Open your terminal or command line.
2. Navigate to the directory containing the `simple-interest.sh` script.
3. Make sure the script is executable by running:

   ```
   chmod +x simple-interest.sh
   ```
4. Run the script:

   ```
   ./simple-interest.sh
   ```
5. Follow the on-screen prompts to enter principal, interest rate, and time.
6. Choose to calculate or exit using the menu options.

---

## Example Session

```
===================================
   SIMPLE INTEREST CALCULATOR      
           by Saiful Miqdar        
===================================

Select an option:
1) Calculate Simple Interest
2) Exit
Enter your choice [1-2]: 1

Enter the principal amount (positive number):
1000
Enter the annual rate of interest (in %):
5
Enter the time period in years (positive number):
3

-----------------------------------
Principal Amount: 1000
Rate of Interest: 5%
Time Period: 3 years
Simple Interest: 150.00
-----------------------------------
```

---

## Prerequisites

* A Unix-like operating system (Linux, macOS)
* Bash shell
* `bc` command-line calculator for decimal arithmetic (usually pre-installed)

---

## Author

**Saiful Miqdar**
Passionate about combining coding and engineering solutions. Feel free to connect!

---

## License

This script is provided as-is for educational purposes.

---

If you'd like, I can also help you prepare the `LICENSE` file or any other documentation needed!
