read -p "Enter username: " username

result=$(grep "^$username:" /etc/passwd)

if [ -z "$result" ]; then
    echo "User $username does not exist"
    exit 1
fi

IFS=: read -r name password uid gid comment home shell <<< "$result"

echo "Username : $name"
echo "UID : $uid"
echo "GID : $gid"
echo "Comment : $comment"
echo "Home : $home"
echo "Shell : $shell"