#! /bin/sh
CURPATH=`pwd`

# argument structure
# ./create {type} {docmuent name} {location}[optional]

if [ -z "$1" ]
then
    echo "please enter type of the file you wish to create"
    exit 1
fi
if [ -z "$2" ]
then 
    echo "Please enter file name"
    exit 1
fi

DIR="$CURPATH/template/$1"
NAME="$2"
OUTDIR="$3"

if [ -d "$DIR" ]
then
    echo "Template found. "
else
    echo "Template Not found. "
fi

if  [ -z "$3" ]
then
    # If we don't have a third argument (location) outputs pwd
    `cp -R $DIR ./$NAME`

else

    `cd $OUTDIR;cp -R $DIR ./$NAME`
fi



