alias ls='ls --color=auto'
alias inp='ssh -p 978 ashley@inp.io'
alias minp='sshfs -p 978 ashley@inp.io:/ ~/seth'
alias moffice='sshfs -p 1337 ashley@inp.io:/home/ashley ~/backdoor'
alias seedbox='sshfs awilliamson@81.171.8.69:/home5/awilliamson/ ~/seedbox'
alias mpass='sudo ntfs-3g /dev/sdd1 ~/pass'
alias top='htop'
alias prolog='swipl'
alias cmake-eclipse='cmake -G "Eclipse CDT4 - Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug'
alias venv_tf='source ~/.virtualenvs/tensorflow/bin/activate.fish'

set -x VISUAL nvim
set -x PATH $HOME/.rvm/gems/ruby-1.9.3-p551/bin $HOME/.gem/ruby/2.3.0/bin $PATH

export GTK_MODULES=
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/gtk-2.0/modules/

# ROS
function indigo
  source /opt/ros/indigo/setup.bash
  export PYTHONPATH=/opt/ros/indigo/lib/python2.7/site-packages:$PYTHONPATH
  export PKG_CONFIG_PATH="/opt/ros/indigo/lib/pkgconfig:$PKG_CONFIG_PATH"

  # Optionally, you can set:
  #export ROS_PACKAGE_PATH=/path/to/your/package/path:$ROS_PACKAGE_PATH

  # Useful aliases
  alias catkin_make="catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so"

  # If you use Gazebo:
  #source /usr/share/gazebo/setup.sh
end

source ~/.config/fish/functions/ssh_agent_start.fish
start_agent
rvm default

