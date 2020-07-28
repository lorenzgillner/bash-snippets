#!/bin/bash

help() {
	echo "Usage: ash command"
	exit 1
}

end() {
	echo ""
	exit 0
}

run() {
	while read -p "($1): " input
	do
		eval $1 "$input"
	done
}

while getopts ":hc" opt; do
	case $opt in
		h) help
		;;
		c) cf=1
		;;
	esac
done

shift $((OPTIND - 1))

[[ -z "$1" || "$1" == "-" ]] && help

[[ -n $cf ]] && clear

run $1

trap end INT
trap end EXIT
