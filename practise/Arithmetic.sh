#! /bin/bash
#purpose: hacker rank question. evaluating arithmetic expression and rounding  upto 3 digits after decimal
#date of creation :07/05/20
#author : vinay chowdary
#start

read line;
printf "%.3f" "$(echo "scale = 4; $line" | bc)"

#end
