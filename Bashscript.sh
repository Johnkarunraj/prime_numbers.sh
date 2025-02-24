#!/bin/bash

# Function to check if a number is prime
is_prime() {
  num=$1
  if [ $num -le 1 ]; then
    echo 0
    return
  fi
  for (( i=2; i*i<=$num; i++ )); do
    if [ $(($num % $i)) -eq 0 ]; then
      echo 0
      return
    fi
  done
  echo 1
}

# Loop through numbers from 1 to 30
for (( n=1; n<=30; n++ )); do
  if [ $(is_prime $n) -eq 1 ]; then
    echo $n
  fi
done

