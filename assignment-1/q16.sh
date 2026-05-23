if [ ! -f "FILE" ]; then
    echo "Error: FILE not found"
    exit 1
fi

while read -r line; do
    for word in $line; do
        first="${word:0:1}"
        last="${word: -1}"
        if [ "$first" = "$last" ]; then
            echo "$word"
        fi
    done
done < FILE