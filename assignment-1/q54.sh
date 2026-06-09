echo -n "Enter number of elements: "
read n

for ((i=0; i<n; i++)); do
    read arr[$i]
done

echo -n "Enter element to search: "
read key

found=0

for item in "${arr[@]}"; do
    if [ "$item" -eq "$key" ]; then
        found=1
        break
    fi
done

if [ $found -eq 1 ]; then
    echo "Element Found"
else
    echo "Element Not Found"
fi
