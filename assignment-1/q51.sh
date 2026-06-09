echo -n "Enter base: "
read x

echo -n "Enter exponent: "
read n

result=1

for ((i=1; i<=n; i++)); do
    result=$((result * x))
done

echo "Result = $result"
