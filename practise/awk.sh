#! /bin/bash
#purpose:awk-command
#date of creation :07/10/20
#author : vinay chowdary
#description
#start

# awk "pattern{actions}" filename
# NR is built in variable to represent line numbers (row count)
# NF : column count
awk '/#/{print NR NF,$2}' debug.sh

# printing 2nd and last column $NF
awk '{print $2,$NF}' debug.sh

# 2nd and last but one column
awk '{print $2,$(NF - 1)}' debug.sh

#end
