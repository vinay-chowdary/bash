#! /bin/bash

arr1=( 'item1' 'item2' 'item3' 'item4')
arr2=( 1 2 3 4 5 6 )

# display all items at a time
echo ${arr1[@]}
echo ${arr2[@]}

# display indices
echo ${!arr1[@]}

# number of elements in array
echo ${#arr2[@]}

# delete by index
unset arr1[2]
echo ${arr1[@]}
echo ${!arr1[@]}

# reset the deleted 
arr1[2]="item3"
echo ${arr1[@]}
echo ${!arr1[@]}
