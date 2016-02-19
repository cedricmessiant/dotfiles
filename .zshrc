export TERM="xterm-256color"
#ZSH_THEME="plou"
ENABLE_CORRECTION="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"
export DEFAULT_USER="cedricmessiant"
#export EDITOR='sublime'
export EDITOR='vim'

source /home/cedricmessiant/tools/antigen/antigen.zsh

# configure POWERLEVEL9K
POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_MODE='awesome-patched'
#POWERLEVEL9K_MODE='compatible'


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
antigen bundle debian
antigen bundle docker
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle nyan
antigen bundle pip
antigen bundle python
antigen bundle sublime
antigen bundle sudo
antigen bundle supervisor
antigen bundle virtualenvwrapper
antigen bundle web-search
antigen bundle z

# plugins=(debian docker git node npm nyan pip python sublime sudo supervisor virtualenvwrapper web-search z)
# catimg
# common-aliases
# compleat
# gitfast
# git-flow
# history
# jsontools
# redis-cli
# svn
# terminitor  TODO TODO TODO
# vagrant
# vi-mode
# virtualenvwrapper
# wd
# https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins


# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme robbyrussell
antigen theme bhilburn/powerlevel9k powerlevel9k

#antigen bundle $HOME/.oh-my-zsh/custom
#antigen theme plou --url=$HOME/.oh-my-zsh/custom

# Tell antigen that you're done.
antigen apply
