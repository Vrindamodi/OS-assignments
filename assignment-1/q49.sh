echo -n "Enter first number: "
read a

echo -n "Enter second number: "
read b

temp=$a
a=$b
b=$temp

echo "After Swapping:"
echo "a = $a"
echo "b = $b"
