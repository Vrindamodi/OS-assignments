merge_arrays() {
    local -n a=$1
    local -n b=$2
    merged=("${a[@]}" "${b[@]}")
}

echo -n "Enter size of first array: "
read n1
echo "Enter $n1 elements:"
for ((i=0; i<n1; i++)); do read arr1[$i]; done

echo -n "Enter size of second array: "
read n2
echo "Enter $n2 elements:"
for ((i=0; i<n2; i++)); do read arr2[$i]; done

merge_arrays arr1 arr2
echo "Merged: ${merged[@]}"
