#! /bin/sh
CURPATH=`pwd`

while inotifywait -e close_write "$CURPATH/$1"; do pdflatex "$CURPATH/$1"; done
