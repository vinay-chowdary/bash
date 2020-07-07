#! /bin/bash

# create a directory , -p is included to avoid error if the directory is already exist.
mkdir -p madeFromSH

# check whether the directory exist or not
echo "enter directory to search"
read dir

# if exist
if [[ -d "${dir}" ]]
then
    echo "${dir} exist"
else
    echo "${dir} doesn't exist"
fi

# create file
touch madeFromSH.txt

echo "enter file name to search"
read dir

# if exist
if [[ -f "${dir}" ]]
then
    echo "${dir} exist"
else
    echo "${dir} doesn't exist"
fi

# reading file line by line
echo "enter file name"
read file

if [[ -f $file ]]
then
    while IFS= read -r line
    do
        echo $line
    done < $file
else
    echo "file doesnot exist"
fi

sleep 1

echo "removing madeFromSH dir..."
sleep 2
rm -r madeFromSH
echo "removing madeFromSH.txt file..."
sleep 2
rm madeFromSH.txt
echo -e "\ndone"