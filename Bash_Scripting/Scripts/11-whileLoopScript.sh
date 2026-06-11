#!/bin/bash

counter=0

while [ $counter -lt 5 ]
do
  echo "Looping....."
  echo "The value of the counter is $counter."
  counter=$(( $counter + 1 ))
  sleep 3
done

echo "Looping ended....."

date