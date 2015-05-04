#!/bin/bash

set -x

baseDir="/Users/dushengchen/work/git"
gitIgore="123"

lst=`ls -al ${baseDir} | awk '{print $9}'`

for i in lst; do
	echo i;
done