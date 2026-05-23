# a="*" assigns the literal string * to a
# b=a   assigns the literal string a to b (not the value of a)
# echo $b prints: a
a="*"
b=a
echo $b
