#7z unzipper
author: Anosh

2019-10-16

## Description
Mass extracts 7z-archives in the working directory to subfolders named after 
the archive. Whitespace and file extension is removed from the directory-names.

###For example:
The contents of
    My Archive.7z
gets extracted to a folder named
    MyArchive/

## Usage
Run `gbs-ls.sh` without arguments

##Requirements:

* bash
* xargs
* 7z (7-Zip file archiver)
