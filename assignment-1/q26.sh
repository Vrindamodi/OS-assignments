# a=* assigns the glob pattern * to a (unquoted)
# echo $a (unquoted) — shell expands * to matching filenames
# echo "$a" (quoted) — prints the literal character *
a=*
echo $a
echo "$a"
