#!/bin/bash
# Unzips all 7z files in a directory to folders named
# after the filename (excluding file extension and space in filenames " ")
# author Anosh, written 2019-10-16

# parameter 1 filename
# parameter 2 output directory
function unzip_dir() {
    echo Extracting files to dir $DIRNAME_QUOTES
    unzip_into_dir="7z x -o$DIRNAME_QUOTES $ARCHIVE_QUOTES"
    eval $unzip_into_dir
}
readonly ARCHIVE_QUOTES=$(echo $1 | sed 's/$/"/' | sed 's/^/"/')
readonly DIRNAME=$(echo $1 | sed 's/.7z//' | tr -d ' ')
readonly DIRNAME_QUOTES=$(echo $1 | sed 's/.7z//' | tr -d ' ' | sed 's/$/"/' | sed 's/^/"/')

mkdir $DIRNAME -v
unzip_dir
