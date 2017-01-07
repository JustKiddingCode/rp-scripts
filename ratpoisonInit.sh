#!/bin/bash
xwait="/home/justkidding/git/xwait/xwait"
pkill -9 xecho

ratpoison "-c gnew xecho"
ratpoison "-c gselect xecho"

ratpoison "-c frestore `cat ~/.ratpoisonlayout`"
ratpoison "-c fselect 0"
ratpoison "-c execf 0  ~/bin/rp/clock"
$xwait
ratpoison "-c fselect 1"
ratpoison "-c execf 1 ~/bin/rp/battery"
$xwait
ratpoison "-c fselect 3"
ratpoison "-c execf 3 ~/bin/rp/volume"
$xwait
ratpoison "-c fselect 4"
ratpoison "-c execf 4 ~/bin/rp/pomodoro"
$xwait
ratpoison "-c fselect 7"
ratpoison "-c execf 7 ~/bin/rp/offline"
$xwait
ratpoison "-c fselect 5"
ratpoison "-c execf 5 ~/bin/rp/brightness"
$xwait
ratpoison "-c fselect 6"
ratpoison "-c execf 6 ~/bin/rp/wifi"
$xwait
ratpoison "-c gselect default"
ratpoison "-c fselect 2"
