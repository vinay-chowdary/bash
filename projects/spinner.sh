#! /bin/bash
#purpose: creating a loading animation while a process is taking place
#date of creation :07/07/20
#author : vinay chowdary
#start

spin()
{
    arr=('/' '-' '\')
    while [ true ]
    do
    for i in ${arr[@]}
    do
    echo -ne "\r$i"
    sleep 0.15
    done
    done
}


copy()
{
    spin &
    PID=$!
    cp -r $1 $2
    kill -9 ${PID}
    echo
}


copy $1 $2


#end
