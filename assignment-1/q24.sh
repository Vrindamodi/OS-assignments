echo -n "Enter word to search: "
read word
echo -n "Enter filename: "
read filename
awk '{
    for (i=1; i<=NF; i++)
        if ($i == "'"$word"'") count++
} END { print "Occurrences of '"$word"': " count+0 }' "$filename"
