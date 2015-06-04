#!/bin/bash

tmp=/tmp/$$
ERROR_EXIT () {
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}

./kadai3 48 24 > $tmp-ans
./kadai3 24 48 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
