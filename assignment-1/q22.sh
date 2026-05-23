echo -n "Enter basic salary: "
read base
if [ "$base" -lt 1500 ]; then
    hra=$(awk "BEGIN {printf \"%.2f\", $base * 0.10}")
    da=$(awk "BEGIN {printf \"%.2f\", $base * 0.90}")
else
    hra=500
    da=$(awk "BEGIN {printf \"%.2f\", $base * 0.98}")
fi
gross=$(awk "BEGIN {printf \"%.2f\", $base + $hra + $da}")
echo "Basic Salary : $base"
echo "HRA          : $hra"
echo "DA           : $da"
echo "Gross Salary : $gross"
