echo -n "Enter username: "
read username
if grep -q "^${username}:" /etc/passwd; then
    echo "$username is a valid user"
else
    echo "$username is not a valid user"
fi
