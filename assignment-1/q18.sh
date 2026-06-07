find / -name "*.tmp" -atime +15 -delete 2>/dev/null
echo "Done: deleted all .tmp files not accessed in the last 15 days"