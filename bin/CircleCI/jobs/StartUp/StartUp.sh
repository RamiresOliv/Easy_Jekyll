#! /bin/bash

echo hello world!!
jekyll server

while read line; do
echo $line
done < bin/CircleCI/jobs/StartUp/configurations.conf

