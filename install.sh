#!/bin/bash

VIMPERF="$HOME/.vimrc"
BASHRC="$HOME/.bashrc"
if test -f "$VIMPERF"; then
	echo "$VIMPERF Exists.. moving..."
    mv $VIMPERF $HOME/.vimrc_ORIGINAL
	echo "Moved to $HOME/.vimrc_ORIGINAL"
else
	echo "No vimrc exists... Creating..."
fi

cp ./.vimrc $HOME/.vimrc
echo "Done."

echo "Adding alias to $BASHRC ..."
echo "alias vi=vim" >> $BASHRC

echo "Done."
echo ""
echo "To reload, source bash_rc: source $BASHRC"
echo ""
