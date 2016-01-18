#######################################################
# Daniel Miessler's zsh configuration
#######################################################

# Editor

export EDITOR="/usr/bin/vim"

# Source Prezto

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

# Aliases

alias bt="wget http://cachefly.cachefly.net/400mb.test > /dev/null"
alias zconf="vi ~/.zshrc"
alias zsource="source ~/.zshrc"
alias zhup="source ~/.zshrc"
alias vhup="source ~/.vimrc"
alias vconf="vim ~/.vimrc"
alias v="cd ~/.vim"
alias b="cd ~/.vim/bundle"
alias nc="ncat"
alias traceroute="/usr/local/sbin/mtr"
alias fd="dscacheutil -flushcache"
alias ds="dd if=/dev/zero of=/tmp/output.img bs=8k count=256k"
alias vi="/usr/bin/vim"
alias vim="/usr/bin/vim"
alias ems="vim ~/.vim/bundle/snippets/snippets/markdown.snippets"
alias ehs="vim ~/.vim/bundle/snippets/snippets/html.snippets"
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias rm="rm -f"
alias ds="du -hs * | sort -h"
