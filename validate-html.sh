#!/bin/bash

# File: validate-html.sh
# Author: Charlie Wallin
# Date: 1/30/21
# Purpose: Automate validating HTML files using VNU

# IMPORTANT -- Need to change the chapter manuaully when running the VNU program

# TODO
# -- Unzip Moodle file
# -- Navigate to each student's directory and unzip each file
# -- Move unziped directory to WORKING_DIR
# -- Delete files no longer needed

clear
echo
echo "/ ~~~~~~~~~~~~~~~~~~~~~ START PROGRAM ~~~~~~~~~~~~~~~~~~~~~ /"
echo
# Directory name
# TODO - Get chapter number from filename
WORKING_DIR=$HOME/School/area51
cd $WORKING_DIR

# Load arrStudents with the file names in the current directory
declare -a arrStudents
for file in *
do
    arrStudents=(${arrStudents[@]} "$file")
done

# Loop through array and run vnu to validate the HTML
for i in "${arrStudents[@]}"
    do
        echo "STUDENT: $i"
        echo "GUIDED PRACTICE"
        vnu --skip-non-html $i/Guided\ Practice\ Ch\ 5/
        echo "REFACTORED CODE" 
        vnu --skip-non-html $i/Refactoring\ Code\ Ch\ 5/
        echo "VISUALIZING CODE"
        vnu --skip-non-html $i/Visualizing\ Code\ Ch\ 5/
        echo "----------------------------------------------------------"
        echo
    done

    
    echo "/ ~~~~~~~~~~~~~~~~~~~~~ END OF PROGRAM ~~~~~~~~~~~~~~~~~~~~~ /"

