while true; do
    echo "Please select an option:"
    echo "1. List files in present working directory"
    echo "2. Current date"
    echo "3. Process status"
    echo "4. All current users"
    echo "5. Present working directory"
    echo "6. Exit"
    echo -n "Enter your choice (1-6): "
    read choice
    case $choice in
        1) ls ;;
        2) date ;;
        3) ps ;;
        4) who ;;
        5) pwd ;;
        6) exit 0 ;;
        *) echo "Invalid option" ;;
    esac
    echo
done
