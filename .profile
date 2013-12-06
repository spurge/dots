# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

export LANG=sv_SE.utf8
#export TERM=rxvt-unicode
export TERMINAL=urxvtc
#export TERMINAL=xfce4-terminal
export EDITOR=vim

set -o vi
set bell-style none

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi

	if [ -f "$HOME/.bash_prompt" ]; then
		. "$HOME/.bash_prompt"
	fi

	if [ -f "$HOME/.dircolors" ]; then
		eval `dircolors $HOME/.dircolors`
	fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

#if [ -z "$DISPLAY" ] && [ $(tty) = /dev/tty1 ]; then
#	startx
	#while true
	#do
		#startx --
		#sleep 10
	#done
#fi
