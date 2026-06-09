echo -n "Enter first number: "
read a

echo -n "Enter second number: "
read b

while [ $b -ne 0 ]; do
    temp=$b
    b=$((a % b))
    a=$temp
done

echo "GCD = $a"
