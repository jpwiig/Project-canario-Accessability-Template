#!/bin/env bash

failed=0
step=1
URL=$1
THRESHOLD=$2
tag=$CI_PIPELINE_ID

test=$(docker run pa11y:$tag /bin/bash -c -x "./accessabilitiy-testing.sh $URL $THRESHOLD")
echo $test
if [[ $test -eq 0 ]]; then
    echo -e "\e[32m accessability test is a success!\e[0m" 
    exit 0
fi
if [[ $test -eq 2 ]]; then
    echo -e "\e[31m please address the accessability issuses that are stated in the report.html file\e[m"
    exit 1 
fi  