
#!/bin/bash -x
echo "Welcome to UC2 -Computer a+b*c"
read -p "Enter input number 1 " a
read -p "Enter input number 2 " b
read -p "Enter input number 3 " c

operation1=$(( $a + $b * $c ))
echo " $a + $b * $c = $operation1"
