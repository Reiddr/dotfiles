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
	printf "n: %d f: %d\n" "$n" "$f"
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

adj_bar () {
	
	printf "(q)uit --(h) (l)++ \n"
	while true; do
		read -n1 -s key
		if [[ $key == 'q' ]]; then
			printf "\rExiting...\n"
			break
		fi
		printf "\rKey Pressed: %s" "$key"
	done
}
