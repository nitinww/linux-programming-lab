echo enter number of files
read n
for ((i = 1; i <= $n; i++)); do
	echo enter file name
	read file
	echo enter word
	read word
	echo file before removing $word:
	cat $file
	grep -v -i $word $file > test
	mv test $file
	echo file after removing $word:
	cat $file
done
