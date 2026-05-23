logged_in=$(who | awk '{print $1}' | sort -u)

all_users=$(cut -d: -f1 /etc/passwd)

echo "Logged In users:"
echo "$logged_in"

echo "Logged Out users:"
while read -r user; do
    if ! echo "$logged_in" | grep -qw "$user"; then
        echo "$user"
    fi
done <<< "$all_users"