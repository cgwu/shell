#!/bin/bash
val1=10
val2=11
if test $val1 -gt 5
then
	echo "The test value $val1 is greater than 5"
fi
# 等同下句
if [ $val1 -gt 5 ]; then
	echo "The test value $val1 is greater than 5"
fi

if [ $val2 -eq 5 ]; then
	echo 等于5
else 
	echo 不等于5
fi

echo 字符串相等测试:
if [ $USER = "sam" ]; then
	echo "Welcome $USER"
fi

str1=testing
if [ -n $str1 ]; then
#if [ -z $str1 ]; then # 判断为空
	echo "The string '$str1' is not empty"
else
	echo "The string '$str1' is empty"
fi

if [ -d $HOME ]; then
	echo "Your HOME directory exists"
	cd $HOME
	ls -a
fi

echo 字符串模式比较，可以使用正则:
if [[ $USER == s* ]]; then
	echo "Hello $USER"
else
	echo "Sorry, I don't know you"
fi

