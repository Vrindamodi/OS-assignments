EMP_FILE="employees.dat"
[ -f "$EMP_FILE" ] || touch "$EMP_FILE"

while true; do
    echo ""
    echo "=== Employee Record Management ==="
    echo "1. Search record by emp_no"
    echo "2. Display emp_no and salary of all employees"
    echo "3. Append new record"
    echo "4. Exit"
    echo -n "Enter choice: "
    read choice
    case $choice in
        1)
            echo -n "Enter employee number: "
            read eno
            result=$(grep "^${eno}:" "$EMP_FILE")
            if [ -n "$result" ]; then
                echo "Emp No  : $(echo $result | cut -d: -f1)"
                echo "Name    : $(echo $result | cut -d: -f2)"
                echo "Salary  : $(echo $result | cut -d: -f3)"
            else
                echo "Employee $eno not found"
            fi
            ;;
        2)
            if [ -s "$EMP_FILE" ]; then
                printf "%-10s %s\n" "Emp No." "Salary"
                awk -F: '{printf "%-10s %s\n", $1, $3}' "$EMP_FILE"
            else
                echo "No records found"
            fi
            ;;
        3)
            echo -n "Enter emp_no: "
            read eno
            echo -n "Enter emp_name: "
            read ename
            echo -n "Enter emp_sal: "
            read esal
            echo "${eno}:${ename}:${esal}" >> "$EMP_FILE"
            echo "Record appended successfully"
            ;;
        4) exit 0 ;;
        *) echo "Invalid choice" ;;
    esac
done
