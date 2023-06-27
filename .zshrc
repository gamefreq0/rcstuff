
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list '' 'r:|[._-]=** r:|=**' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle :compinstall filename '/home/keith/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit; prompt gentoo
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
#bindkey -v
#Disabling above while testing kak-mode, below
# End of lines configured by zsh-newuser-install

powerline-daemon -q
. /usr/lib/python3.11/site-packages/powerline/bindings/zsh/powerline.zsh

setopt interactive_comments

zstyle ':completion::complete:*' use-cache 1

source ~/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}
# setup key accordingly
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      history-beginning-search-backward
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    history-beginning-search-forward
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char
[[ -n "${key[Left]}"    ]]  && bindkey  "^${key[Left]}"   backward-word
[[ -n "${key[Right]}"   ]]  && bindkey  "^${key[Right]}"  forward-word

zle_highlight=(region:bg=blue,fg=white)
source ~/.local/share/zsh/kak-mode.zsh
