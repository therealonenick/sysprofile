#!/bin/bash

VIMPERF="$HOME/.vimrc"
if test -f "$VIMPERF"; then
	echo "$VIMPERF Exists.. Deleting..."
    rm -rf  $VIMPERF
	echo "Deleted."
else
	echo "No vimrc exists... Creating..."
	cp ./.vimrc $HOME/.vimrc
	#touch $VIMPERF
	#echo "set number" >> $VIMPERF
	#echo "set tabstop=4" >> $VIMPERF
	#echo "set cursorline" >> $VIMPERF
	echo "Done."
fi
