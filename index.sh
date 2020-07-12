
#!/bin/bash -x

sort_function(){
	arr=("${!1}")
	len=${#arr[@]}
	#echo "Unsorted Array: "${arr[@]}
	for ((i = 0; i<len; i++))
	do
	    for((j = 0; j<len-i-1; j++))
	    do
	        if [ ${arr[j]} -lt  ${arr[$(( $j+1 ))]} ]
	        then
	            temp=${arr[j]}
	            arr[$j]=${arr[$((j+1))]}
	            arr[$((j+1))]=$temp
	        fi
	    done
	done
	echo "Sorted Array in descending: "${arr[@]}
}


declare -A arithemtic


echo "Welcome to UC8 -Sort values from array"

read -p "Enter input number 1 " a
read -p "Enter input number 2 " b
read -p "Enter input number 3 " c

operation1=$(( $a + $b * $c ))
echo " $a + $b * $c = $operation1"
arithmetic["a+b*c"]=$operation1

operation2=$(( $a * $b + $c ))
echo " $a * $b + $c = $operation2"
arithmetic["a*b+c"]=$operation2

operation3=$(( $c + $a / $b ))
echo " $c + $a / $b = $operation3"
arithmetic["c+a/b"]=$operation3

operation4=$(( $a % $b + $c ))
echo " $a % $b + $c = $operation4"
arithmetic["a%b+c"]=$operation4

#echo ${arithmetic[@]}

counter=0
for key in "${!arithmetic[@]}"
do
	array1[$counter]=${arithmetic[$key]}
	#echo ${array1[$counter]}
	((counter++))
done
echo "Values transfered from dictonary to array"
sort_function array1[@]
