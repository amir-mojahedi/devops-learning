#!/bin/bash

for VAR1 in ansible jenkins devops terraform
do
  echo "Looping 1......."
  echo "#################################"
  echo "Value of VAR1 is $VAR1"
  echo "#################################"
done

sleep 4

echo "#################################"
echo "#################################"

echo "Looping 2..........."

echo "bash version is ${BASH_VERSION}"

for i in {0..10..2}
do
  echo "Welcome $i times."
done

sleep 4

echo "#################################"
echo "#################################"

echo "Looping 3..........."

for ((c=1; c<=5; c++))
do
  echo "Welcome $c times"
done


date