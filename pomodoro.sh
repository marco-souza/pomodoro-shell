#/bin/bash

### Timer on Shell Script
pomodoro=0
m=0
n=0
echo 'How many times?'
read rep

((m=25*60*1000)) 	# 25 min on miliseconds
((n=5*60*1000))		#  5 min on miliseconds

while (( (rep--)> 0  )); do
	clear
	echo '## Pomodoro '$pomodoro

	echo '-- Do something NOW!'; sleep $m; (( pomodoro++ ))
	echo '-- Stop it and relax'; beep -r 10000 -f 432 -d 500
	relax=$n
	if (( pomodoro%3 == 0 )); then
		(( relax=relax*3 ))
	fi
	echo '-- Time for fun!'
	echo '-- Come back to work!'; beep -r 10000 -f 432 -d 500
	sleep $relax
done
