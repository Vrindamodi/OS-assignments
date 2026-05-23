find . -type f | while read -r file; do
    name=$(basename "$file")
    size=$(stat -c%s "$file")
    permissions=$(stat -c%A "$file")
    echo "Filename: $name Size: $size bytes permissions: $permissions" >> backup
done