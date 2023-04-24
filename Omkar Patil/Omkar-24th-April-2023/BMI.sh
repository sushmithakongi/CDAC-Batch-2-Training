#!/bin/bash

echo -n "Enter the weight in Kg: "
read weight

echo -n "Enter the height in meters: "
read height

# Calculate the BMI using the formula weight / (height * height)
bmi=$(echo "scale=1; $weight / ($height * $height)" | bc)

echo "The BMI is $bmi"

# Classify the BMI based on the following table:
# Underweight: less than 18.5
# Normal weight: between 18.5 and 24.9
# Overweight: between 25 and 29.9
# Obesity: 30 or greater
if (( $(echo "$bmi < 18.5" | bc -l) )); then
  echo "You are underweight"
elif (( $(echo "$bmi >= 18.5" | bc -l) && $(echo "$bmi <= 24.9" | bc -l) )); then
  echo "You have a normal weight"
elif (( $(echo "$bmi >= 25" | bc -l) && $(echo "$bmi <= 29.9" | bc -l) )); then
  echo "You are overweight"
else
  echo "You are obese"
fi