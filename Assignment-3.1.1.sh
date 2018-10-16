#!/bin/bash

du -hc ~/ 1> FileUsage.txt &
find / -name "*.log" 2> /dev/null 1> ListOfLogFiles.txt &
wait
