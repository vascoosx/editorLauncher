#!/bin/bash - 

if [ -z $1 ]; then
    echo "usage $0 <editor>"
    exit 1;
else
    editor=$1
fi
export LANG=en_US.UTF-8
tmpfile=$(mktemp /tmp/$(basename $0 ".sh")_XXXXXX).md
pbpaste  > $tmpfile
open -W -a $editor $tmpfile
< $tmpfile pbcopy

