#!/usr/bin/env sh

help() {
	echo "Usage: ∞ command"
	exit 1
}

end() {
	echo ""
	exit 0
}

[ -z $1 ] && help

cmd=$1

while read -p "($cmd): " input
do
	eval $cmd "$input"
done

trap end INT
trap end EXIT
