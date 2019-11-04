#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias inp='ssh -p 978 ashley@inp.io'
alias minp='sshfs -p 978 ashley@inp.io:/ ~/seth'
alias seedbox='sshfs awilliamson@awilliamson.lw289.ultraseedbox.com:/ ~/seedbox'
alias mpass='sudo ntfs-3g /dev/sdd1 ~/pass'
alias top='htop'
alias prolog='swipl'

export EDITOR=nvim

if [ -d $HOME/bin ]; then
	export PATH="$HOME/bin:$PATH"
fi

export OPENNI2_INCLUDE=/home/radon/XtionSDK/Linux_64/OpenNI-Linux-x64-2.2/Include
export OPENNI2_REDIST=/home/radon/XtionSDK/Linux_64/OpenNI-Linux-x64-2.2/Redist

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export http_proxy=''
export https_proxy=''
export ftp_proxy=''
export socks_proxy=''
