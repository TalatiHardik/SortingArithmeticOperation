
#!/bin/bash -x

declare -A arithemtic

echo "Welcome to UC6 -Store reuslt in dictonary"
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
