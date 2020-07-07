#! /bin/bash
#purpose: change desktop background image 
#date of creation :07/07/20
#author : vinay chowdary
#start

# there is some issue with crontab.background is not updating when script ran through cronjob
# so let us loop it
imgDir="${HOME}/Pictures/Wallpapers"
imgs=(${imgDir}/*)
TOTAL=${#imgs[@]}

# while [ true ]
# do
bg=${imgs[RANDOM % $TOTAL]}
gsettings set org.gnome.desktop.background picture-uri $bg
# sleep 1m
# done
#end
