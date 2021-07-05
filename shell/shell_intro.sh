#! /bin/bash

# VARIABLE A_2
# NAME="Sally"
# echo "My name is $NAME"
# echo "My name is ${NAME}"

# USER INPUT
# read -p "Enter your name: " NAME
# echo "Hello $NAME, nice to meet you!"


# SIMPLE IF STATEMENT
# if [ "$NAME"=="Sally" ]
# then
#     echo "Your name is Sally!!"
# elif [ "$NAME" == "Alex" ]
# then
#     echo "Your name is Alex"
# else
#     echo "Your name is neither Sally nor Alex"
# fi

# COMPARISON
# NUM1=3
# NUM2=5
# if [ "$NUM1" -gt "$NUM2" ]
# then
#     echo "$NUM1 is greater than $NUM2"
# else
#     echo "$NUM1 is less than $NUM2"
# fi
#################################
# val1 -eq val2 : val1 == val2
# val1 -ne val2 : val1 != val2
# val1 -gt val2 : val1 > val2
# val1 -ge val2 : va2 <= val1
# val1 -lt val2 : val1 < val2
# val1 -le val2 : val1 <= val2
#################################

# FILE CONDITIONS
# FILE="test.txt"
# if [ -e "$FILE" ]
# then
#     echo "$FILE is a file"
# else
#     echo "$FILE is not a file"
# fi

###################################################
# -d file : True if the file is a directory
# -e file : True if the file exists 
# -f file : True if the provided string is a file
# -g file : True if the group id is set on a file
# -r file : True if the file is readable
# -s file : True if the file has a non-zero size
# -u : True if the user id is set on a file
# -w  : True if the file is writable 
# -w  : True if the file is an executable
###################################################

#CASE STATEMENT
# read -p "Are you 21 or over? Y/N :" ANSWER
# case "$ANSWER" in
#     [yY] | [yY][eE][sS])
#         echo "You can have a beer:)"
#         ;;
#     [nN] | [nN][oO])
#         echo "Sorry..."
#         ;;
#     *)
#         echo "Please enter y/yes or n/no"
#         ;;
# esac

# SIMPLE FOR LOOP
# NAMES="Sally Alex Alice Mark"
# for NAME in $NAMES
#     do 
#         echo "Hello $NAME"
# done


# FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#     do 
#         echo "Renameing $FILE to new-$FILE"
#         mv $FILE $NEW-$FILE
# done


# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
# LINE=1
# while read -r CURRENT_LINE
#     do
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done < "./new-2.txt"


# FUNCTION
# function sallyHello(){
#     echo "Hello, world!"
# }
# sallyHello

# FUNCTION WITH PARAMS
# function greet(){
#     echo "Hello, I am $1 and I am $2"
# }
# greet "Sally" "Korean" 


# CREATE FOLDER AND WRTIE TO A FILE
# mkdir hello
# touch "hello/world.txt"
# echo "Hello World" >> "hello/world.txt"
# echo "Success!"