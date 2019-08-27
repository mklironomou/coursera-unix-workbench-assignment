#!/usr/bin/env bash
# File: guessinggame.sh

function get_directory_file_counts {
  # only count files, but not directories!
  echo $(ls -al | grep ^[-] | wc -l)
}

echo "Type in your guess about the number of files in the current directory ..."
echo  "... and then press Enter:"

real_file_counts=$(get_directory_file_counts)

while read response
do
  if ! [[ $response =~ ^[0-9]+$ ]]
  then
    echo "Your response is not an integer non-negative number ..."
    echo "Type in a new (valid) guess and then press Enter:"
  elif [[ $response -gt $real_file_counts ]]
  then
    echo "Your response is greater than expected ..."
    echo "Type in a new guess and then press Enter:"
  elif [[ $response -lt $real_file_counts ]]
  then
    echo "Your response is lower than expected ..."
    echo "Type in a new guess and then press Enter:"
  else
    echo "Congratulations, $real_file_counts is the correct number!"
    break
  fi
done
