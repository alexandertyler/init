#!/bin/bash

# handle our session name
session="$1"
if [ -z "$1" ] 
then
  session="sesh"
fi

SESSIONEXISTS=$(tmux list-sessions | grep $session)
if [ "$SESSIONEXISTS" = "" ]
then
tmux new-session -d -s $session

tmux rename window -t 0 Main



fi

tmux attach-session -t $session:0
