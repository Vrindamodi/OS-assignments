# IFS does NOT apply to literal strings passed to set — no word splitting occurs
# set economists+are+seldom+right sets: $1=economists+are+seldom+right $#=1
# $3 and $4 are unset (empty)
# Output: 1
IFS=+
set economists+are+seldom+right
echo $3 $4 $#
