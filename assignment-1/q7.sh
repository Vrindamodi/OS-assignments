positive=0
negative=0

echo "Enter integers: (ctrl + D to stop): "

while read -r num; do
    if [ "$num" -gt 0 ]; then
        ((positive++))
    elif [ "$num" -lt 0 ]; then
        ((negative++))
    fi
done

echo "Positive numbers: $positive"
echo "Negative numbers: $negative"