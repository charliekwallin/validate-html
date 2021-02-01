#!/bin/bash

# File: unzip-moodle-files.sh
# Author: Charlie Wallin
# Date: 2/1/21
# Purpose: Utility that unzips the Moodle grade file then unzips all of the students files

echo "/ ~~~~~~~~~~~~~~~~~~~~~ START PROGRAM ~~~~~~~~~~~~~~~~~~~~~ /"
echo

cd ~/School/area51

unzip *.zip

# Load arrStudents with the file names in the current directory
# Could probably do this directly w/o the array
declare -a arrStudents
for file in *
do
    arrStudents=(${arrStudents[@]} "$file")
done

# Running into the prompt
# replace Jimmy Baker_8044863_assignsubmission_file_/baker-jimmy-05.zip? [y]es, [n]o, [A]ll, [N]one, [r]ename:
# Niether of these methods are working for me
# Looking for a way to get around the prompt
for i in "${arrStudents[@]}"
    do
      # yes | unzip $i/*.zip
      unzip -o  $i/*.zip
    done

    echo "/ ~~~~~~~~~~~~~~~~~~~~~ END OF PROGRAM ~~~~~~~~~~~~~~~~~~~~~ /"
