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
alias prometheus-tunnel='ssh -L 9576:127.0.0.1:22 -A -J ashley@185.35.77.23:978 ashley@127.0.0.1 -p 35722 -f -N -vv; and sshfs -p 9576 ashley@localhost:/ ~/prometheus'
alias seth_rsync='sudo rsync -aAXv --numeric-ids --info=progress2 --exclude={"/swapfile","/movies/","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} -e "ssh -p 978" --rsync-path="sudo rsync" ashley@inp.io:/ /backup/seth/'
alias hyperion_rsync="sudo rsync -aAXv --numeric-ids --info=progress2 -e 'ssh -p 9576 -i /home/radon/.ssh/id_rsa' --rsync-path='sudo rsync' ashley@localhost:/home/ashley/GitHubTests /backup/hyperion/"

alias h-connect='~/vpn-connect.exp'
alias hvpn="ssh -Y ashley@150.237.89.49"
alias hvpn-mount="sshfs -o cache_timeout=115200 -o attr_timeout=115200 ashley@150.237.89.49:/ ~/gpu"
alias hvpn-tb="ssh -L 6006:127.0.0.1:6006 ashley@150.237.89.49 -f -N"
alias hvpn-nb="ssh -L 8888:127.0.0.1:8888 ashley@150.237.89.49 -f -N"
alias hvpn-nas="ssh ashley@150.237.96.71"
alias hvpn-nas-mount="sshfs ashley@150.237.96.71:/ ~/nas"

set -x VISUAL nvim
set -x EDITOR nvim
set -x PATH $HOME/.rvm/gems/ruby-1.9.3-p551/bin $HOME/.gem/ruby/2.3.0/bin ~/.pub-cache/bin $PATH
set -x LD_LIBRARY_PATH $LD_LIBRARY_PATH /opt/cuda/extras/CUPTI/lib64/
set -x __GL_SYNC_TO_VBLANK 0
set -g theme_nerd_fonts yes

export GTK_MODULES=
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/gtk-2.0/modules/

source ~/.config/fish/functions/ssh_agent_start.fish
start_agent
rvm default

set -g theme_display_git no
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_k8s_context yes
set -g theme_display_hg yes
set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g VIRTUAL_ENV_DISABLE_PROMPT yes
