#!/bin/sh
#
# Copyright (c) 2015, Joel A. Nilsson <joel@alikzus.se>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
#

abort() {
	exit 1
}

usage() {
	echo
	echo "Usage: ${0##*/} [-f]" >&2
	echo
	echo "Options:"
    echo "  -f    read host(s) from the specified file"
	echo
	abort
}

pr_err() {
	echo "!!! ${@}"
}

pr() {
	echo "==> ${@}"
}

trap "abort" 1 2 3 13 15

if [ "$(id -u)" -ne 0 ]; then
	pr_err "Need root privileges to run"
	usage
fi

while getopts 'abc' arg; do
	case ${arg} in
	a)	;;
	b)	;;
	c)	;;
	*)	usage ;;
	esac
done

[ $# = $(($OPTIND-1)) ] || usage
