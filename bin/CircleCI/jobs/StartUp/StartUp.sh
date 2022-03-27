#! /bin/bash

echo hello world!!
jekyll server

input="/bin/CircleCI/jobs/StartUp/configurations.conf"
while IFS= read -r line
do
  echo "$line"
done < "$input"