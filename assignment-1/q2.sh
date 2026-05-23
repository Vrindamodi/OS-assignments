for f in *; do
    lower="${f,,}"
    if [ "$f" != "$lower" ]; then
        mv "$f" "$lower"
    fi
done