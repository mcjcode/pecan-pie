#!/bin/sh

for fn in *.raw
do
    if ! (./run.sh `basename $fn .raw`)
    then
	exit 1
    fi
done
