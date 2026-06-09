echo -n "Enter a string: "
read str

count=$(echo "$str" | grep -o "[AEIOUaeiou]" | wc -l)

echo "Number of vowels = $count"
