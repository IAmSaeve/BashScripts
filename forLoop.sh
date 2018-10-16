#!/bin/bash

for FIL in *; do
    ANDENFIL=$1/$FIL
    if [[ -f $FIL && ! -a $ANDENFIL ]]; then
        echo $FIL does not exist in folder $1
    fi
done
