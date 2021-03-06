#!/bin/bash

PWD_CURRENT=`pwd`

if [ $# == 0 ]; then
    echo "error: param[1] is required"
else
    cd `dirname $0`
    if [ $1 == "--encode" ] || [ $1 == "-e" ]; then
        bash ./encode.sh "$2"
    elif [ $1 == "--decode" ] || [ $1 == "-d" ]; then
        bash ./decode.sh "$2"
    else
        echo "error: param[$1] is not supported"
    fi
    cd $PWD_CURRENT
fi