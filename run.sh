#!/bin/sh

base=$1
rawfn=$base.raw

if [ -e $rawfn ]; then
    (echo "#lang pie"; mztext $rawfn) > $base.pie
    # nothing after the 'context' line is useful to me.
    #
    # copy the output to out.pie 
    echo "running $base.pie"
    racket $base.pie 2>&1 | awk 'BEGIN { x=1 } /context\.\.\./ { x=0 } (x==1) {print $0}' | tee out.pie
else
    echo "$rawfn doesn't exist"
    exit 1
fi
