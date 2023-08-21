#!/bin/bash

# this is ARRAY - it Can hold multiple values instead of a single value
PERSONS=("Ramesh" "Suresh" "SACHINE")

#inside array we always refer values with index and its start from 0

#Peron to person
echo "Frist person of: ${PERSONS[0]}"
echo "Second person of: ${PERSONS[1]}"
echo "Third person of: ${PERSONS[2]}"

# For all persons to print below one is the syntax
echo "All person of: ${PERSONS[@]}"