#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Yuichiro Hatanaka <s19c1092el@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo ${1}行目が違う
	res=1
}

res=0


out=$(seq 5 | ./plus)
[ "${out}" = 15.0 ] || ng "$LINENO"
[ "${res}" = 0 ] && echo OK

exit $res

