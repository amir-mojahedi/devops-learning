#!/bin/bash

DirName="01-firstscript.sh 02-webscript.sh 03-varWebscript.sh 04-varScript.sh 05-argScript.sh 06-comSubScript.sh 07-expVarScript.sh 08-interactiveScript.sh 09-ifScript.sh 10-forLoopScript.sh"

for file in $DirName
do
    vi $file
    echo "#!/bin/bash" > $file
    :q
done
