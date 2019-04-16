#!/bin/bash
LT_PATH="/home/pavel/Programming/LaTeX_templates/"
TEMPLATE="$LT_PATH$1.tex"
FILE_NAME="$2"

if [ -e $TEMPLATE ]; then
    if [ "$FILE_NAME" == "" ]; then
        FILE_NAME="$1"
    fi
    if [ ! ${FILE_NAME: -4} == ".tex" ]; then
        FILE_NAME="$FILE_NAME.tex"
    fi
    cp "$TEMPLATE" "$FILE_NAME"
    nvim "$FILE_NAME"
else
    echo "Template $TEMPLATE does not exist!"
fi

