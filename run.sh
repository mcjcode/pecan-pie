#!/bin/sh

fn=$1

(echo "#lang pie"; mztext $fn.raw) > $fn.pie; racket $fn.pie
