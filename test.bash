#!/bin/bash


ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | python3 plus)

[ "${out}" = 15 ] || ng ${LINENO}

[ "${res}" = 0 ] && echo OK
exit $res


