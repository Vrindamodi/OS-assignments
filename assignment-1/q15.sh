read -p "Enter the number of elements: " n

numbers=()
sum=0

for ((i=0; i<$n; i++)); do
    read num
    numbers+=("$num")
    sum=$((sum + num))
done

echo "The summation of these numbers is: $sum"

