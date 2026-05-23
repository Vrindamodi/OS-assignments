# a=b  → a holds string "b"
# b=c=d=c → b holds string "c=d=c"
# echo $$b → $$ expands to PID, then literal 'b' appended
# echo $$$d → $$ expands to PID, $d is unset (empty) → prints just PID
# Example if PID is 439 then output will be:
# 439b
# 439

a=b
b=c=d=c
echo $$b
echo $$$d
