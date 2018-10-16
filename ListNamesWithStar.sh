#!/bin/bash

FILES=( `ls -a` )

for n in ${FILES[@]}
do
    echo "* " $n
done
