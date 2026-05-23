echo "Enter first filename:"
read file1

echo "Enter second filename:"
read file2


if [ ! -f "$file1" ]; then
    echo "File '$file1' not found!"
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "File '$file2' not found!"
    exit 1
fi

echo "Enter the output filename:"
read outfile

sort "$file1" "$file2" > "$outfile"

echo ""
echo "Output file contents: '$outfile' ---"
cat "$outfile"