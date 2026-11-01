#!/bin/bash

# Simple Interest Calculator
# Calculates simple interest based on user input.

echo "Welcome to Simple Interest Calculator"

echo "Enter the principal amount:"
read p

echo "Enter rate of interest per year:"
read r

echo "Enter time period in years:"
read t

# Calculate simple interest
si=$(echo "scale=2; $p * $r * $t / 100" | bc)

echo "Simple Interest is: $si"

# Calculate total amount
amount=$(echo "scale=2; $p + $si" | bc)

echo "Total Amount is: $amount"
