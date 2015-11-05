# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

PATH=~/bin:$PATH
export PATH=~/bin:/home/greg/bin:/home/greg/bin:/usr/lib64/qt-3.3/bin:/usr/lib64/ccache:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/mx/bin:/home/greg/bin

export VISUAL=vim
export USE_CCACHE=1

# command prompt highlighting
PS1='\[\033[0;36m\]\u\[\033[1;35m\]@\[\033[0;32m\]\h \[\033[1;35m\]\W\[\033[0;36m\] \$ \[\033[0m\]'


################################################################################
# proper shell and screen colouring - Start
################################################################################
#
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi

# In order to use the 'light-theme' for colouring the shell and playing nice with 'screen',
# copy the predefined DIR_COLORS* theme into the users directory first:
#
#   cp /etc/DIR_COLORS.lightbgcolor ~/.dircolors
#
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi
#
################################################################################
# proper shell and screen colouring - End
################################################################################


################################################################################
# bash-git-prompt - Start
################################################################################
#
# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1

source ~/.bash-git-prompt/gitprompt.sh
#
################################################################################
# bash-git-prompt - End
################################################################################


# git-completion.bash
source ~/.git-completion.bash
