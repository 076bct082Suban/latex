#! /bin/sh
CURPATH=`pwd`

# basically copies a folder from template folder to a desired location

read -e -p "Type of project: " typename

DIR="$CURPATH/template/$typename"

if [ -d "$DIR" ]
then
    echo "Template found. "
else
    echo "Template Not found. "
    exit 0
fi

read -e -p "Enter project name: " name

if [ -z "$name" ]
then
  echo "No name, exiting.."
  exit 0
fi

read -e -p "path name:" pathname

if  [ -z "$pathname" ]
then
  `cp -R $DIR ./$name`

else
  `cd $pathname; cp -R $DIR ./$name`
fi



