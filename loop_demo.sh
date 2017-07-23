#!/bin/bash
for test in Alabama Alaska Arizona Califorfnia Colorado 中国
do
	echo The next Station is $test
done

for test in I don\'t know if "this'll" work ; do
	echo "word: $test"
done

echo 从文件中读取值
file=whole.txt
for line in `cat $file`; do
	echo "值: $line"
done

echo 循环目录
for file in /home/sam/dev/* 
do
	if [ -d "$file" ]; then
		echo "D: $file is a directory"
	elif [ -f "$file" ]; then
		echo "F: $file is a file"
	fi
done
						
echo "C style for loop"
for (( i=1,j=10; i <= 10; i++,j--))
do
	echo "The next number is: $i - $j"
done

echo "While demo"
var1=10
while [ $var1 -gt 0 ]
do
	echo $var1
	var1=$[ $var1 - 1 ]
done

echo "Nest loop"
for(( a=1; a<=3; a++ ))
do
	for(( b=1; b<=3; b++ ))
	do
		echo "a=$a,b=$b"	
	done
done
