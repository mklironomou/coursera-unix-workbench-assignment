#!/usr/bin/env bash
# File: guessinggame.sh

function get_directory_file_counts {
  # only count files, but not directories!
  echo $(ls -al | grep ^[-] | wc -l)
}

echo "Type in your guess about the number of files in the current directory ..."
echo  "... and then press Enter:"
read response

real_file_counts=$(get_directory_file_counts)

while [[ $response -ne $real_file_counts ]]
do
  if [[ $response -gt $real_file_counts ]]
  then
    echo "Your response is greater than expected ..."
  else
    echo "Your response is lower than expected ..."
  fi
  echo  "Type in a new guess and then press Enter:"
  read response
done

echo "Congratulations, $real_file_counts is the correct number!"
