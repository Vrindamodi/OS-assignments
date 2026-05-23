echo -n "Enter a sentence: "
read sentence
count=$(echo "$sentence" | tr -cd ' ' | wc -c)
echo "Number of blanks in the sentence: $count"
