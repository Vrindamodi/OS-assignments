echo "Parent PID: $$"

(
    echo "Child PID: $$ Parent PID: $PPID"
    echo "Child process sleeping now for 10s"
    sleep 10
    echo "Child done. My parent PID is now $PPID"
) &

child_pid=$!
echo "Parent created child: $child_pid"
echo "Parent exiting now"
exit 0