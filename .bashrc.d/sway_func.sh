#!/bin/bash
print_bar () {
	local i=$1
	if [[ $i -gt 100 ]]; then 
		i=100
	fi
	if [[ $i -lt 0 ]]; then
		i=0
	fi
	printf "i: %d" "$i"
}

adj_bar () {
	printf "(q)uit\n"
	while true; do
		read -n1 -s key
		if [[ $key == 'q' ]]; then
			printf "\rExiting...\n"
			break
		fi
		printf "\rKey Pressed: %s" "$key"
	done
}
