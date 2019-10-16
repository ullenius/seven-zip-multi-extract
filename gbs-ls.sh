#!/bin/bash
ls -1 *.7z | sed 's/$/"/' | sed 's/^/"/' | xargs -n 1 gbs-dir.sh
