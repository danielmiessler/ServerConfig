## General

#Check for updates on initial load...

if [ "$DISABLE_AUTO_UPDATE" != "true" ]
then
  /usr/bin/env zsh $ZSH/tools/check_for_upgrade.sh
fi

## Paths

# Add Homebrew path
export PATH="/usr/local/sbin:$PATH"

# ZSH Conf
export LSCOLORS='Exfxcxdxbxegedabagacad'

alias ls='ls --color=auto'
# add a function path
fpath=($ZSH/functions $ZSH/completions $fpath)

# Load all of the config files in ~/oh-my-zsh that end in .zsh
# TIP: Add files you don't want in git to .gitignore
for config_file ($ZSH/lib/*.zsh) source $config_file

# Add all defined plugins to fpath
plugin=${plugin:=()}
for plugin ($plugins) fpath=($ZSH/plugins/$plugin $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

# Load all of the plugins that were defined in ~/.zshrc
for plugin ($plugins); do
  if [ -f $ZSH/custom/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/custom/plugins/$plugin/$plugin.plugin.zsh
  elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
done

# Load all of your custom configurations from custom/
if [ -d "$ZSH/custom" ]; then
  for config_file ($ZSH/custom/*.zsh) source $config_file
fi

# Load the theme
source "$ZSH/themes/steeef.zsh-theme"

# Aliases

alias dev="cd /Users/daniel/Development"
alias bt="wget http://cachefly.cachefly.net/400mb.test"
alias d="cd /Users/daniel/Desktop"
alias www="cd /Users/daniel/Development/htdocs/"
alias startsplunk="/Applications/splunk/bin/splunk start"
alias stopsplunk="/Applications/splunk/bin/splunk stop"
alias zconf="vi ~/.oh-my-zsh/oh-my-zsh.sh"
alias zsource="source ~/.oh-my-zsh/oh-my-zsh.sh"
alias zhup="source ~/.oh-my-zsh/oh-my-zsh.sh"
alias vhup="source ~/.vimrc"
alias vconf="vim ~/.vimrc"
alias wr="cd /Users/Daniel/Documents/Writing/"
alias p="git commit -am 'Generic Push' && git push website master"
alias v="cd ~/.vim"
alias b="cd ~/.vim/bundle"
alias nc="ncat"
alias traceroute="/usr/local/sbin/mtr"
alias fd="dscacheutil -flushcache"
alias ds="dd if=/dev/zero of=/tmp/output.img bs=8k count=256k"
alias vi="/usr/bin/vim"
alias vim="/usr/bin/vim"
alias nb="vim +BlogNew"
alias np="vim +BlogNew\ page"
alias eb="vim +BlogList"
alias ep="vim +BlogList\ page"
alias ems="vi ~/.vim/bundle/snippets/snippets/markdown.snippets"
alias ehs="vi ~/.vim/bundle/snippets/snippets/html.snippets"
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

# Set vi mode
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
bindkey '^R' history-incremental-search-backward
