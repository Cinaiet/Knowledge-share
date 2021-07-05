#! /bin/bash

# source/ test/ my_file => target/ test / my_file

ITEM="my_file.txt"
SOURCE_DIR="./source/test/"
TARGET_DIR="./target/test/"

read -p "Do you want to replace file from $SOURCE_DIR$ITEM to $TARGET_DIR$ITEM?(y/n) " ANSWER
# case "$ANSWER" in
#     [yY] | [yY][eE][sS])
#         scp "$SOURCE_DIR/$ITEM" "$TARGET_DIR/$ITEM"
#         echo "Success!"
#         ;;
#     [nN] | [nN][oO])
#         echo "Canceled.."
#         ;;
#     *)
#         echo "Please enter y/yes or n/no"
#         ;;
# esac

function scpFunc(){
    scp "$SOURCE_DIR$ITEM" "$TARGET_DIR$ITEM"
    echo "Success!"
}

function answerValidator(){
    if [ "$1" == "y" ]
    then
        return 1;
    elif [ "$1" == "n" ]
    then
        return 0;
    else
        echo "Please enter y/n!"
    fi
}


if [ "$ANSWER" == "y" ]
then
    scpFunc;
elif [ "$ANSWER" == "n" ]
then
    read -p "Do you want to change source name? (y/n) " SOURCE_ANSWER
    if [ $SOURCE_ANSWER == 'y' ]
    then
        read -p "Please enter the source path:  " SOURCE_DIR
    fi

    read -p "Do you want to change target name? (y/n) " TARGET_ANSWER
    if [ $TARGET_ANSWER == 'y' ]
    then
        read -p "Please enter the target path:  " TARGET_DIR
    fi

    read -p "Do you want to replace file from $SOURCE_DIR$ITEM to $TARGET_DIR$ITEM?(y/n) " ANSWER
    if [ $SOURCE_ANSWER == "y" ]
    then
        scpFunc
    elif [ "$ANSWER" == "n" ]
    then
        echo "Canceled.."
    fi
else
    echo "Please enter y/n!"
fi