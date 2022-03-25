#!/bin/bash

# Bash script that finds files with the ".c" extension nd counts lines in each of them.


search_dir=$1

# Read stdout of utility find.
# 'read' is performed with the -r option to disable backslashes to escape characters.
# 'find' looks for files (with .c extension) in the 'search_dir' dir  and its subdirs.
find "$search_dir" -depth -type f -regex '^.*\.c$' | while read -r filename
do
  wc -l "$filename"  # Print newline count for specified file
done



# The same with Process Substitution extension ( <(list) )

# while read -r filename
# do
#   wc -l "$filename"  # Print newline count for specified file
# done < <(find "$search_dir" -depth -type f -regex '^.*\.c$')
