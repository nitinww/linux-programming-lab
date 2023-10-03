echo "enter file name: "
read fname
echo "enter the starting line number: "
read s
echo "enter the ending line number: "
read e
# sed -n $s,$e\p $fname
awk "NR >= $s && NR <= $e" "$fname"

