if [ $# -lt 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

dir=$1

if [ ! -d $dir ]; then
    echo "$dir is not a directory"
fi

for f in "$dir"/*; do
    base=$(basename "$f")
    lower="${base,,}"

    if [ "$base" == "$lower" ]; then
        continue
    fi

    if [ -e "$dir/$lower" ]; then
        echo "Warning: Not overwriting $lower"
        continue
    fi

    mv "$f" "$dir/$lower"
done
