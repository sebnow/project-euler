#!/bin/sh

sum=0
num=0
max=1000
while [ $num -lt $max ]; do
	let "three = num % 3"
	let "five = num % 5"
	if [[ $three -eq 0 ]] || [[ $five -eq 0 ]]; then
		let "sum = sum + num"
	fi
	let "num = num + 1"
done

echo "Answer: $sum"
