#!/bin/bash

readarray a < $1
echo The file has ${#a[@]} lines.
