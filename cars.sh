#! /bin/bash
# cars.sh
# Dan Proctor

echo "Enter one of the following commands:"
echo "1) Add a car to the inventory file"
echo "2) List the cars in the inventory file"
echo "Q) Quit the program."

read input

while [ "$input" != "Q" ]
do
	
	if [ "$input" == 1 ]
	then
		echo "What is the year?"
		read year
		echo "What is the make?"
		read make
		echo "What is the model?"
		read model
		echo "$year":"$make":"$model" >> My_old_cars
	elif [ "$input" == 2 ]
	then 
		sort My_old_cars
	elif [ "$input" == "Q" ]
	then 
		echo "Goodbye"
		break
	else
		echo "Please enter a valid option."
	fi
	
	echo ""
	echo "Please enter another command:"
	echo "1) Add a car to the inventory file"
	echo "2) List the cars in the inventory file"
	echo "Q) Quit the program."
	read input


done
	
	

	

 
