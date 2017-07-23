#!/bin/bash
case $USER in 
rich | sam)
	echo "Welcome, $USER"
	echo "Please enjoy your visit";;
testing)
	echo "Special testing account";;
*)
	echo "Sorry, you're not allowed here";;
esac

