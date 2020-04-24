#!/bin/bash

VIMPERF="$HOME/.vimrc"
BASHRC="$HOME/.bashrc"

# Check if existing file and move it to retain.
if test -f "$VIMPERF"; then
	echo "$VIMPERF Exists.. moving..."
    mv $VIMPERF $HOME/.vimrc_ORIGINAL
	echo "Moved to $HOME/.vimrc_ORIGINAL"
else
	echo "No vimrc exists... Creating..."
fi

cp ./.vimrc $HOME/.vimrc
echo "Done."

# Add vim alias for via
echo "Adding alias to $BASHRC ..."
echo "alias vi=vim" >> $BASHRC

#Uncomment following lines for colors. This changes from the default blue which is sometimes hard to read
#echo "Updating LS_COLORS..."
#echo "LS_COLORS=\$LS_COLORS:'di=0;94:';  export LS_COLORS" >> $BASHRC


echo "Done."
echo ""
echo "To reload, source bash_rc: source $BASHRC"
echo ""
