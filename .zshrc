export TERM="xterm-256color"
#ZSH_THEME="plou"
ENABLE_CORRECTION="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"
export DEFAULT_USER="cedricmessiant"
#export EDITOR='sublime'
export EDITOR='vim'
export ANDROID_HOME="${HOME}/tools/android-sdk-linux"

source /home/cedricmessiant/tools/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle debian
antigen bundle docker
antigen bundle git
antigen bundle grep
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

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme bira

# Tell antigen that you're done.
antigen apply