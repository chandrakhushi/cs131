#!/bin/bash
IFS=$'\n'
lines=$(awk -F ',' '$8 == "United States" {print}' 'Global YouTube Statistics.csv')
for i in $lines
do
    category=$(echo "$i" | awk -F ',' '{print $5}')
    echo "$i" >> "United States/${category}.txt"
done
