#!/bin/bash
pkill xecho
ratpoison "-c frestore (frame :number 0 :x 0 :y 0 :width 683 :height 27 :screenw 1600 :screenh 900 :window 6291457 :last-access 21 :dedicated 0),(frame :number 2 :x 0 :y 27 :width 1600 :height 873 :screenw 1600 :screenh 900 :window 69206043 :last-access 20 :dedicated 0),(frame :number 1 :x 683 :y 0 :width 385 :height 27 :screenw 1600 :screenh 900 :window 12582913 :last-access 22 :dedicated 0),(frame :number 3 :x 1068 :y 0 :width 266 :height 27 :screenw 1600 :screenh 900 :window 16777217 :last-access 23 :dedicated 0),(frame :number 4 :x 1334 :y 0 :width 266 :height 27 :screenw 1600 :screenh 900 :window 0 :last-access 0 :dedicated 0)"
ratpoison "-c fselect 0"
ratpoison "-c execf 0  while :; do printf \"\f%s\" \"\`date '+%a %d.%b %H:%M'\`\" && sleep 60; done | ~/git/xecho/xecho -stdin"
sleep 1;
ratpoison "-c fselect 1"
ratpoison '-c execf 1 ~/bin/rp/battery'
sleep 1;
ratpoison "-c fselect 3"
ratpoison "-c execf 3 while :; do printf \"\fVol: %s\" \"\`amixer get Master | egrep -so '\[[0-9]{1,3}\%\]|\[off\]' | tr -d '\n' | sed 's,\]\[,\|,g' | sed 's,.*off.*,Muted,g'\`\" && sleep 3; done | ~/git/xecho/xecho -stdin"
sleep 1;
ratpoison "-c fselect 4"
ratpoison '-c execf 4
while :; 
        do 
        `/bin/ping -c 1 google.de 2>&1 > /dev/null`
        if [ $? -eq 0 ]
                then 
                        printf "\fONLINE"
                else 
                        printf "\fOFFLINE"
         fi 
        sleep 30
        done | ~/git/xecho/xecho -stdin
'
sleep 1;
ratpoison "-c fselect 2"
