#!/bin/sh


# echo "Enter any value:"
# read choice
# if [ $choice -eq 1 ];
# then
#     echo "you enter $choice"
# # fi
# case $choice in 
#     1) 
#         echo "You enter 1st case $choice";;
#     2) 
#         echo "You enter 2nd case $choice";;
#     *) 
#         echo "You enter default case $choice";;
#     esac
# echo "Finished..."

##################################
# User Login System
# echo "Enter username"
# read username
# echo "Enter password"
# read password
# if [[ $username -eq "admin" && $password == "123" ]]; then
#     echo "      Valid user"
# elif [[ $username -eq "admin2" && $password == "1234" ]]; then
#     echo "      Vvalid user"
# elif [[ $username -eq "admin3" && $password == "12345" ]]; then
#     echo "      Vvvalid user"
# else
#     echo "      Invalid user"
# fi

# echo "enter the a vale"
# read a
# echo "enter b value"
# read b
# c=$( expr $a + $b )
# echo "sum:"$c
# c=$( expr $a - $b )
# echo "sub:"$c
# c=$( expr $a \* $b )
# echo "mul:"$c
# c=$( expr $a / $b )
# echo "div:"$c

# c=$(  $a + $b )
#!/bin/bash
# num="1 2 3 4 5 6 7 8 9"
# count_even=0
# count_odd=0
# for n in $num
# do
#     remainder=$( expr $n % 2 )
#     if [ $remainder -eq 0 ]
#     then
#         # echo "Even number: $n"
#         count_even=$( expr $count_even + 1 )
#         continue
#     fi
#     count_odd=$( expr $count_odd + 1 )
# done


# echo " which table you want"
# j="2 3 4 5 6 7 8"
# for n in $j
# do 
#     for i in 1 2 3 4 5 6 7 8 9 10
#     do
#         echo $n "x" $i "=" $( expr $i \* $n )
#     done
# done

# if [ $var1 -eq 2 -a $var2 -eq 0 ]
# then
#     continue
# else
#     if [] then
#         echo 
#     fi
# fi

# function()
# {
#     x=$1
#     y=$2
# }

# function value1 value2

# LAB TASK
# 
echo "Enter Physics Marks:"
read physics
echo "Enter Math marks:"
read math
echo "Enter English Marks:"
read english
echo "Enter Chemistry marks:"
read chemistry
echo "Enter Computer marks:"
read computer


# Function to convert marks into Garde
marksToGrade()
{
    marks=$1
    grade=0

    if [ $marks -ge 90 ] && [ $marks -le 100 ];
    then
        grade="A+"
        echo $grade

    elif [ $marks -ge 86 ] && [ $marks -le 90 ]];
    then
        grade="A"
        echo $grade

    elif [ $marks -ge 82 ] && [ $marks -le 86 ]];
    then
        grade="A-"
        echo $grade

    elif [ $marks -ge 78 ] && [ $marks -le 82 ]];
    then
        grade="B+"
        echo $grade

    elif [ $marks -ge 74 ] && [ $marks -le 78 ]];
    then
        grade="B"
        echo $grade
    elif [ $marks -ge 70 ] && [ $marks -le 74 ]];
    then
        grade="B-"
        echo $grade

    elif [ $marks -ge 66 ] && [ $marks -le 70 ]];
    then
        grade="C+"
        echo $grade

    elif [ $marks -ge 62 ] && [ $marks -le 66 ]];
    then
        grade="C"
        echo $grade
    
    elif [ $marks -ge 58 ] && [ $marks -le 62 ]];
    then
        grade="C-"
        echo $grade
    
    elif [ $marks -ge 54 ] && [ $marks -le 58 ]];
    then
        grade="D+"
        echo $grade

    elif [ $marks -ge 50 ] && [ $marks -le 54 ];
    then
        grade="D"
        echo $grade
    
    elif [ $marks -le 50 ] && [ $marks -ge 0 ]];
    then
        grade="F"
        echo $grade
    else
        echo "Marks not matched..."
    fi
}

# Function to convert Grade into Corresponding Grade
gradeToPoints()
{
    choice=$1
    case $choice in 
    "A+") 
        grade="4.0"
        echo $grade;;
    "A") 
        grade="4.0"
        echo $grade;;
    "A-") 
        grade="3.67"
        echo $grade;;
    "B+") 
        grade="3.33"
        echo $grade;;
    "B") 
        grade="3.00"
        echo $grade;;
    "B-") 
        grade="2.67"
        echo $grade;;
    "C+") 
        grade="2.33"
        echo $grade;;
    "C") 
        grade="2.00"
        echo $grade;;
    "C-") 
        grade="1.67"
        echo $grade;;
    "D+") 
        grade="1.33"
        echo $grade;;
    "D") 
        grade="1.00"
        echo $grade;;
    "F") 
        grade="0.00"
        echo $grade;;
    *) 
        echo "You enter invalid grade: $choice";;
    esac
}
# Calling Functions to get output
grade1=$( marksToGrade $physics )
point1=$( gradeToPoints $grade1 )
# echo "Physics here $grade1"

grade2=$( marksToGrade $math )
point2=$( gradeToPoints $grade2 )
# echo "Math here $grade2"

grade3=$( marksToGrade $english )
point3=$( gradeToPoints $grade3 )
# echo "English here $grade3"

grade4=$( marksToGrade $chemistry )
point4=$( gradeToPoints $grade4 )
# echo "Chemistry here $grade4"

grade5=$( marksToGrade $computer )
point5=$( gradeToPoints $grade5 )
# echo "Computer here $grade5"

#  Printign finals results
echo "Physics Course:- Marks: $physics, Grade: $grade1, Points: $point1"
echo "Math Course:- Marks: $math, Grade: $grade2, Points: $point2"
echo "English Course:- Marks: $english, Grade: $grade3, Points: $point3"
echo "Chemistry Course:- Marks: $chemistry, Grade: $grade4, Points: $point4"
echo "Computer Course:- Marks: $computer, Grade: $grade5, Points: $point5"



