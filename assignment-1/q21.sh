awk 'BEGIN {
    print "This is the employee information"
    "date" | getline d
    print "Todays date is : " d
    print "emp no.  name  salary  age  commission"
}
{
    if($3 < 500)
        comm = $3 * 5 / 100
    else if($3 > 5000)
        comm = $3 * 10 / 100
    else
        comm = 0
    print $1, $2, $3, $4, comm
    total_salary += $3
    total_commission += comm
    n++
}
END {
    print "The No. of employees is : " n
    print "The total salary is : Rs. " total_salary
    print "The total commission is : Rs. " total_commission
    print "Thanking you for seeing this report."
}' emp.dat
