#!/bin/bash

# this script runs your brew command on a batch of brew packages
# ex: `$ ./brew-help.sh "brew cask install" brew-cask-list.txt`

commandToExecute="$1"
echo commandToExecute
filename="$2"
echo filename

while read -r line
do

	{
	    brewFormulaName=$line
	    echo "trying $brewFormulaName"

	    eval "$commandToExecute $brewFormulaName"
	    echo "finished $brewFormulaName"
   	}
	# & 
	# disabling parallelization for now 
   	# end with '&' to run block in background (parallelizes)

done < "$filename"

wait

