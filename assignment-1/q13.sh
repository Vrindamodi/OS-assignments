for f in *.c; do
    output="${f%.c}"
    gcc "$f" -o "$output"
    if [ $? -eq 0 ]; then
        echo "$f successfully compiled -> $output"
    else
        echo "Failure compiling $f"
    fi
done