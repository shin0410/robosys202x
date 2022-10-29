#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Yamamoto Shintarou
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | python3 plus)

[ "${out}" = 15 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | python3 plus)
[ "$?" = 1 ]     || ng ${LINENO}
[ "${out}" = ""] || ng ${LINENO}

out=$(echo | python3 plus)
[ "$?" = 1 ]     || ng ${LINENO}
[ "${out}" = ""] || ng ${LINENO}

[ "${res}" = 0 ] && echo OK
exit $res


