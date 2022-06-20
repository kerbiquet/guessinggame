#!/usr/bin/env bash
# File: gessinggames.sh

function usage {
    echo "usage: $0 directory Where directory is an actual directory if no directory is specified, default is current directory"
    exit 1
}

# if more than 1 argument exit
[[ $# -gt 1 ]] && usage

#case script called with an argument
if [[ $# -eq 1 ]]
then
    if [[ -d $1  ]]
    then 
        echo "$1 is a valid directory"
        working_directory=$1
    else    
        usage
    fi
elif [[ $# -eq 0 ]]
then
    working_directory=`pwd`
else
    usage
fi

let nb_file=`ls $working_directory| wc -l`

while [[ true ]]
do
    echo "pleage guess the number of file in the $working_directory directory: "
    read answer

    if [[ $answer -gt $nb_file ]]
    then echo "they are less files, try again"
    elif [[ $answer -lt $nb_file ]]
    then echo "they are more files, try again"
    else
        echo "Correct anwser, well done !"
        exit 0
    fi
done
