#!/bin/sh
# Tristan Le Guern <tleguern@bouledef.eu>
# This file is placed in the public domain.

set -e

readonly PROGNAME="$(basename $0)"
readonly VERSION='v1.0'

usage() {
        echo "usage: $PROGNAME string"
}

say=""

while getopts ":" opt;do
	case $opt in
		:) echo "$PROGNAME: option requires an argument -- $OPTARG";
		   usage; exit 1;;	# NOTREACHED
		\?) echo "$PROGNAME: unkown option -- $OPTARG";
		   usage; exit 1;;	# NOTREACHED
		*) usage; exit 1;;	# NOTREACHED
	esac
done
shift $(( $OPTIND -1 ))

if [ -z "$1" ]; then
	echo "$PROGNAME: stuff expected"
	usage
	exit 1
else
	say="$@"
fi

set -u

if [ ${#say} -ge 70 ]; then
	echo Martine thinks this is complicated
	exit 1
fi

printf "( %s )o. (|€~\n" "$say"
