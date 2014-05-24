#!/bin/sh
#
# calculate.sh
#
# original script coded by Takashi Unuma, Kyoto Univ.
# Last modified: 2014/05/24
#

if test $# -lt 1 ; then
    echo "USAGE: sh $(basename $0) [input file]"
    exit 2
fi

infile=$1

awk '{print $0}' ${infile}
echo "---------------------------"
awk 'NR>3 {sum += $2}END{printf ("Total: %12d\n", sum)}' ${infile}
awk 'NR>3 && /食費/   {sum += $2}END{printf ("食費: %13d\n", sum)}' ${infile}
awk 'NR>3 && /電車代/ {sum += $2}END{printf ("電車代: %11d\n", sum)}' ${infile}
