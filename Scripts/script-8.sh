#!/bin/bash
echo "Mathematical computation"
a=5.66
b=8.67
c=`echo $a + $b|bc`
echo $c
exit 0 