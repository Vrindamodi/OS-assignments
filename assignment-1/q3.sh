echo "Enter text (press ctrl+D when finshed): "

input=$(cat)

lines=$(echo "$input" | wc -l)
words=$(echo "$input" | wc -w)

echo "Number of lines = $lines"
echo "Number of words = $words"