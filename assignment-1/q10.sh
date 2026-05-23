read -p "Enter source file: " src
read -p "Enter destination filename: " dest

if [ ! -f "$src" ]; then
    echo "$src file not found"
    exit 1
fi

cat "$src" > "$dest"

echo "Content copied successfully"