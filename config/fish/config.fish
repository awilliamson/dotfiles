alias ls='ls --color=auto'
alias inp='ssh -p 978 ashley@inp.io'
alias minp='sshfs -p 978 ashley@inp.io:/ ~/seth'
alias moffice='sshfs -p 35722 ashley@inp.io:/home/ashley ~/backdoor'
alias seedbox='sshfs awilliamson@46.166.143.67:/home31/awilliamson/ ~/seedbox'
alias mpass='sudo ntfs-3g /dev/sdd1 ~/pass'
alias top='htop'
alias prolog='swipl'
alias cmake-eclipse='cmake -G "Eclipse CDT4 - Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug'
alias venv_tf='source ~/.virtualenvs/tensorflow/bin/activate.fish'
alias prometheus='ssh -A -t -p 978 ashley@185.35.77.23 ssh -A -p 35722 ashley@localhost'

set -x VISUAL nvim
set -x EDITOR nvim
set -x PATH $HOME/.rvm/gems/ruby-1.9.3-p551/bin $HOME/.gem/ruby/2.3.0/bin ~/.pub-cache/bin $PATH
set -x LD_LIBRARY_PATH $LD_LIBRARY_PATH /opt/cuda/extras/CUPTI/lib64/
set -x __GL_SYNC_TO_VBLANK 0

export GTK_MODULES=
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/gtk-2.0/modules/

source ~/.config/fish/functions/ssh_agent_start.fish
start_agent
rvm default

