#!/bin/bash

# Simple Interest Calculator

echo "----------------------------------------"
echo "      Simple Interest Calculator        "
echo "----------------------------------------"

# Read user input for Principal
read -p "Enter the principal amount (P): " principal

# Read user input for Rate of Interest
read -p "Enter the annual interest rate in % (R): " rate

# Read user input for Time period
read -p "Enter the time period in years (T): " time

# Calculate simple interest using 'bc' for floating-point math
# Formula: SI = (P * R * T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate final amount
# Formula: Amount = P + SI
amount=$(echo "scale=2; $principal + $interest" | bc)

echo "----------------------------------------"
echo "Simple Interest (SI) = $interest"
echo "Total Amount (Principal + Interest) = $amount"
echo "----------------------------------------"
