echo enter number of files
read n
echo enter word
read word
for ((i = 1; i <= $n; i++)); do
	echo enter file name
	read file
	cat $file
	sed -i "/$word/d" "$file"
	cat $file
done
