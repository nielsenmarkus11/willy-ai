#!/bin/bash
cmd=1
while [ $cmd -eq 1 ]
do
	run-psx.sh | echo
	larry.sh
	cmd=$?
done
