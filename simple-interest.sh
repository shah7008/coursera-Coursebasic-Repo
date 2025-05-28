#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"

# Input principal amount
read -p "Enter the principal amount (in Rs.): " principal

# Input rate of interest
read -p "Enter the rate of interest (in % per annum): " rate

# Input time period
read -p "Enter the time period (in years): " time

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Calculate total amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display results
echo "---------------------------------"
echo "Principal Amount: Rs. $principal"
echo "Rate of Interest: $rate% per annum"
echo "Time Period: $time years"
echo "Simple Interest: Rs. $interest"
echo "Total Amount: Rs. $total"
echo "---------------------------------"
