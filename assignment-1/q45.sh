echo -n "Enter first number: "
read a

echo -n "Enter second number: "
read b

echo -n "Enter third number: "
read c

largest=$a

if [ $b -gt $largest ]; then
    largest=$b
fi

if [ $c -gt $largest ]; then
    largest=$c
fi

echo "Largest Number = $largest"
