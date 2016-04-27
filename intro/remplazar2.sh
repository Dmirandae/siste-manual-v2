#!/bin/bash

     	for fl in *.tex; do
     		cp $fl $fl.old
     		#
     		sed  -i 's/\ \$\"\$/\`\`/g'  $fl

     		ls  -s $fl
     	done
