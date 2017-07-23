#!/bin/bash
testuser=samfoo
# Evaluate the exit status of command
if grep $testuser /etc/passwd; then
	echo The bash files from user $testuser are:
	ls -a /home/$testuser/.b*
else
	echo 用户不存在！
fi

