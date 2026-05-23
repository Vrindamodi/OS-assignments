hour=$(date +%H)

if [ "$hour" -le 11 ]; then
    echo "GOOD MORNING"
elif [ "$hour" -le 15 ]; then
    echo "GOOD AFTERNOON"
elif [ "$hour" -le 19 ]; then 
    echo "GOOD EVENING"
else
    echo "GOOD NIGHT"
fi