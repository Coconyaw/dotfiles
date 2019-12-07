# lang setting
case $TERM in
      linux) LANG=C ;;
      # *) LANG=ja_JP.UTF-8;;
      *) LANG=LANG=en_US.UTF-8;;
esac
export LANG=en_US.UTF-8

# The following lines were added by compinstall

# zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/munchkin/.zshrc'

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history

# End of lines configured by zsh-newuser-install

# auto complete setting
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
setopt list_packed
zstyle ':completion:*' list-colors ''

setopt correct
setopt no_beep

# prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd() { vcs_info }
PROMPT='%F{blue}%c%f %n %F{red}$%f '
RPROMPT='${vcs_info_msg_0_}'

# alias
# color
alias ls='ls -G --color=auto'
alias ll='ls -al -G'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias less='less -NM'
export CLICOLOR=1
