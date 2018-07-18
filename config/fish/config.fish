alias ls='ls --color=auto'
alias inp='ssh -p 978 ashley@inp.io'
alias minp='sshfs -p 978 ashley@inp.io:/ ~/seth'
alias moffice='sshfs -o allow_other -p 35722 ashley@inp.io:/home/ashley ~/backdoor'
alias seedbox='sshfs awilliamson@46.166.143.67:/home31/awilliamson/ ~/seedbox'
alias mpass='sudo ntfs-3g /dev/sdd1 ~/pass'
alias top='htop'
alias prolog='swipl'
alias cmake-eclipse='cmake -G "Eclipse CDT4 - Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug'
alias venv_tf='source ~/.virtualenvs/tensorflow/bin/activate.fish'
alias prometheus='ssh -A -t -p 978 ashley@185.35.77.23 ssh -A -p 35722 ashley@localhost'
alias vpnon='sudo systemctl start openvpn-client@client'
alias vpnoff='sudo systemctl stop openvpn-client@client'
alias hyperion='ssh -A -J ashley@185.35.77.23:978,ashley@localhost:35722 ashley@10.5.60.141'
alias tunnel='ssh -L 9576:127.0.0.1:22 -A -J ashley@185.35.77.23:978,ashley@127.0.0.1:35722 ashley@10.5.60.141 -f -N; and sshfs -p 9576 ashley@localhost:/ ~/gpu'
alias seth_rsync='sudo rsync -aAXv --numeric-ids --info=progress2 --exclude={"/swapfile","/movies/","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} -e "ssh -p 978" --rsync-path="sudo rsync" ashley@inp.io:/ /backup/seth/'
alias hyperion_rsync="sudo rsync -aAXv --numeric-ids --info=progress2 -e 'ssh -p 9576 -i /home/radon/.ssh/id_rsa' --rsync-path='sudo rsync' ashley@localhost:/home/ashley/GitHubTests /backup/hyperion/"


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

