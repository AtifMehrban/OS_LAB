#!/bin/sh

# Function to convert marks into Grade
marksToGrade() {
    marks=$1

    if [ $marks -ge 90 ]; then
        echo "A+"
    elif [ $marks -ge 86 ]; then
        echo "A"
    elif [ $marks -ge 82 ]; then
        echo "A-"
    elif [ $marks -ge 78 ]; then
        echo "B+"
    elif [ $marks -ge 74 ]; then
        echo "B"
    elif [ $marks -ge 70 ]; then
        echo "B-"
    elif [ $marks -ge 66 ]; then
        echo "C+"
    elif [ $marks -ge 62 ]; then
        echo "C"
    elif [ $marks -ge 58 ]; then
        echo "C-"
    elif [ $marks -ge 54 ]; then
        echo "D+"
    elif [ $marks -ge 50 ]; then
        echo "D"
    else
        echo "F"
    fi
}

# Function to convert Grade into Corresponding Points
gradeToPoints() {
    case $1 in
    "A+"|"A") echo "4.0";;
    "A-") echo "3.67";;
    "B+") echo "3.33";;
    "B") echo "3.00";;
    "B-") echo "2.67";;
    "C+") echo "2.33";;
    "C") echo "2.00";;
    "C-") echo "1.67";;
    "D+") echo "1.33";;
    "D") echo "1.00";;
    "F") echo "0.00";;
    *) echo "Invalid grade: $1";;
    esac
}

# Input marks for each course
read -p "Enter CN Marks: " CN
read -p "Enter IS marks: " IS
read -p "Enter Cloud Marks: " cloud
read -p "Enter DB marks: " DB
read -p "Enter OS marks: " OS

# Calculate grades and points
G1=$(marksToGrade $CN)
p1=$(gradeToPoints $G1)
G2=$(marksToGrade $IS)
p2=$(gradeToPoints $G2)
G3=$(marksToGrade $cloud)
p3=$(gradeToPoints $G3)
G4=$(marksToGrade $DB)
p4=$(gradeToPoints $G4)
G5=$(marksToGrade $OS)
p5=$(gradeToPoints $G5)

# Print final results
echo "CN Course: Marks: $CN, Grade: $G1, Points: $p1"
echo "IS Course: Marks: $IS, Grade: $G2, Points: $p2"
echo "Cloud Course: Marks: $cloud, Grade: $G3, Points: $p3"
echo "DB Course: Marks: $DB, Grade: $G4, Points: $p4"
echo "OS Course: Marks: $OS, Grade: $G5, Points: $p5"
