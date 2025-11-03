#! /bin/env bash
 #set -o pipefail

 #https://gitlab.com/gitlab-org/ci-cd/accessibility/-/blob/master/gitlab-accessibility.sh?ref_type=heads

 #testing with 1 file

 filePath=$1
 threshold=$2

 if [[ -z "$filePath" ]]; then
 #echo "fill out the file"
 fi

 if [[ -z "$threshold" ]]; then
 #echo "running with standard threshold of 5"
 threshold=5
 fi

# echo "testing file $filePath with the max number of errors of $threshold" 

pa11y -T $threshold -c "./pa11y.json" $filePath >report.html --reporter html
echo $? #check the exit code

