#!/bin/bash

echo "Enter your weight in kilograms:"
read weight

echo "Enter your height in meters:"
read height

# Calculate BMI
bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

echo "Your BMI is $bmi"

# Determine weight status based on WHO guidelines
if (( $(echo "$bmi < 18.5" | bc -l) )); then
            echo "You are underweight."
    elif (( $(echo "$bmi < 25" | bc -l) )); then
                echo "You have a healthy weight."
        elif (( $(echo "$bmi < 30" | bc -l) )); then
                    echo "You are overweight."
            else
                        echo "You are obese."
fi
