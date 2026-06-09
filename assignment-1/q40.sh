echo -n "Enter first number: "
read a

echo -n "Enter second number: "
read b

x=$a
y=$b

while [ $y -ne 0 ]; do
    temp=$y
    y=$((x % y))
    x=$temp
done

gcd=$x
lcm=$((a * b / gcd))

echo "LCM = $lcm"
