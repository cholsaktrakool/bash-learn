#!/bin/bash

# find . -iname "dir_*" -o -iname "file_*"

find . -iname "dir_*" | xargs rm -r

# find . -iname "file_*" -exec echo {} | tr "." "" \;
