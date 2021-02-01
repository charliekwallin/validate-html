!#/bin/bash
clear

echo "Start HTML Validation Program"
echo
cd ~/School/area51

CHAPTER="05"

declare -a stulist=(
    "lee-kristen-$CHAPTER"
    "baker-jimmy-$CHAPTER"
    "hendon-jeff_$CHAPTER"
    )
# loop through the array
for i in "${stulist[@]}"
do
    echo "$i"
    echo "Guided Practice"
    echo $i/Guided\ Practice\ Ch\ 5/
    vnu --skip-non-html $i/Guided\ Practice\ Ch\ 5/
    echo "Refactoring Code"
    # Remove index.html if exists
    vnu --skip-non-html $i/Refactoring\ Code\ Ch\ 5/
    echo "Visualizing Code"
    vnu --skip-non-html $i/Visualizing\ Code\ Ch\ 5/
    echo " --------------------------------------- "
done

echo "End of Program"
