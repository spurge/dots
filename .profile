# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

export LANG=sv_SE.UTF-8
export TERMINAL=urxvtc
export EDITOR=vim
#export WORKON_HOME=~/.virtualenvs

#source /usr/bin/virtualenvwrapper.sh

#set -o vi
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
fi

if [ -f "$HOME/.dircolors" ]; then
	eval `dircolors $HOME/.dircolors`
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.gem/ruby/2.2.0/bin" ] ; then
	PATH="$HOME/.gem/ruby/2.2.0/bin:$PATH"
fi

#if [ -z "$DISPLAY" ] && [ $(tty) = /dev/tty1 ]; then
#	startx
#fi
