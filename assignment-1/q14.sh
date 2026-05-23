factorial() {
    local n=$1
    local result=1

    for ((i=2; i<=n; i++)); do
        result=$((result * i))
    done

    echo $result
}

read -p "Enter number: " n
result=$(factorial $n)
echo "Factorial of $n = $result"
