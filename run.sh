#!/bin/sh

base=$1
rawfn=$base.raw

if [ -e $rawfn ]; then
    (echo "#lang pie"; mztext $rawfn) > $base.pie
    # nothing after the 'context' line is useful to me.
    racket $base.pie 2>&1 | awk 'BEGIN { x=1 } /context\.\.\./ { x=0 } (x==1) {print $0}' 
else
    echo "$rawfn doesn't exist"
fi
