#!/bin/bash
echo "Script for Function call"
sum()
{
    x=$1
    y=$2
    # k="sijbvn"
    # k=$(( $x + $y ))
    k=$( expr $x + $y )
    return $k
}
sum 7 5
echo "Sum of two no is:$?"
grade1=$?
# sum 56
# grade2=$?
echo "Sum of two no is:$grade1"
exit 0