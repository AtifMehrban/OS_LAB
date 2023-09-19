#!/bin/bash

echo "While Loop"
x=6

while [ $x -gt 1 ] ; do
	echo $x
	x=$(( $x - 1 ))
done
exit 0