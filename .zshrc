#==============================================================
#
# C O N F I G U R A T I O N  F O R  Z S H
#

#=-=-=-=-=-=-=
# load stuffs
#=-=-=-=-=-=-=

autoload -U colors && colors
autoload -U compinit && compinit
autoload -U vcs_info && vcs_info

zmodload zsh/complist
zmodload zsh/terminfo

# setopt
setopt \
  autocd \
  ksh_glob \
  extendedglob \
  prompt_subst \
  inc_append_history

bindkey -v

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
# Import seperate config files
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

for r in $HOME/etc/zsh/*.zsh; do
  if [[ $DEBUG > 0 ]]; then
    echo "zsh: sourcing $r"
  fi
  source $r
done

#Local
export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"
export LOCALE="en_US.UTF-8"

#eval $( dircolors -b $XDG_CONFIG_HOME/zsh/LS_COLORS/LS_COLORS )
export LS_COLORS
eval $(dircolors -b $HOME/.dircolors)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#[[ $TERM != "screen" ]] && exec tmux
alias fuckgfw="ssh -qTfnN -D 7070 kevin@206.253.164.176 -p 22"
alias goagent="python2.7 /home/kevin/Codes/goagent/local/proxy.py"
alias ping="ping -c 5"
