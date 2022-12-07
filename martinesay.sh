#!/bin/sh
# Tristan Le Guern <tleguern@bouledef.eu>
# This file is placed in the public domain.

set -e

readonly PROGNAME="$(basename $0)"
readonly VERSION='v1.0'

usage() {
        echo "usage: $PROGNAME [-l] [-e eyes] [-f file] [-T tongue] [string]"
}

say=""
wrap=69

while getopts ":le:f:T:W:" opt;do
	case $opt in
		e) echo "$PROGNAME: jellyfishes do not have eyes" >&2;
		   exit 1;;
		f) : ;; # Nope.
		l) printf "Cow files in self:\nmartine\n"
		   exit 0;;
		T) echo "$PROGNAME: jellyfishes do not have tongues" >&2;
		   exit 1;;
	        W) wrap="$OPTARG" ;;
		:) echo "$PROGNAME: option requires an argument -- $OPTARG" >&2;
		   usage; exit 1;;	# NOTREACHED
		\?) echo "$PROGNAME: unkown option -- $OPTARG" >&2;
		   usage; exit 1;;	# NOTREACHED
		*) usage; exit 1;;	# NOTREACHED
	esac
done
shift $(( $OPTIND -1 ))

if [ -n "$1" ]; then
	say="$@"
else
	read -r say
fi

set -u

if [ ${#say} -ge "$wrap" ]; then
	say="$(echo "$say" | cut -c "1-$wrap")"
fi

printf "( %s )o. (|€~\n" "$say"
