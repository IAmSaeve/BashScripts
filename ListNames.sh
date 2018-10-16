#!/bin/bash

NAMES=( `cat Names.txt` )

for n in ${NAMES[@]}
do
    echo "- " $n
done
