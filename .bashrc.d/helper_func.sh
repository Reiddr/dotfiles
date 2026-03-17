#!/bin/bash
clipval () {
	local i=$1
	if [[ $i -lt $2 ]]; then 
		i=$2
	fi
	if [[ $i -gt $3 ]]; then
		i=$3
	fi
	echo $i
}

getpercent() {
	local n=$(clipval $1 $2 $3)
	local p=$(( ($n - $2) * 100 / ($3 - $2) ))
	echo $p
}

printbar () {
	local fill="#"
	local empty="."
	local n=$(clipval $1 0 100)
	local f=$((n/5))
	printf "["
	for i in {1..20}; do
		if [[ i -le f ]]; then 
			printf "$fill"
		else
			printf "$empty"
		fi
	done
	printf "]"
}

getbrightness () {
	echo $(brightnessctl -qPd intel_backlight g)
}

setbrightness () {
	brightnessctl -qd intel_backlight s $1%
}

adjbar () {
	
	printf "(q)uit --(h) (l)++ \n"
	local p=$($1)
	printf "\r%s" "$(printbar $p)"
	local step=5
	while true; do
		read -n1 -s key
		if [[ $key == 'q' ]]; then
			printf "\rExiting...\n"
			break
		elif [[ $key == 'h' ]]; then
			p=$p-$step
		elif [[ $key == 'l' ]]; then
			p=$p+$step
		fi
		p=$(getpercent $p 0 100)
		$($2 $p)
		printf "\r%s" "$(printbar $p)"
	done
}

adjbrightness () {
	adjbar getbrightness setbrightness
}
