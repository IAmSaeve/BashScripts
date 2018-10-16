#!/bin/sh

today=`date | awk '{print $1}'`

if [ $today = Mon ]; then
    echo "It's monday today"
else
    echo "It's not monday today"
fi
