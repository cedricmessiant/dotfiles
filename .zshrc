# namedir () { $1=$PWD ;  : ~$1 }
# chpwd () { print -Pn '^[]2;%~^G' }

# vi mode
bindkey -v
export KEYTIMEOUT=1  # no delay when hitting esc

# colored diff for svn
svndiff() {
  svn diff "${@}" | colordiff | less -R
}


# add gems to PATH
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# fix bundler install
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

[[ -f .zsh_aliases ]] && source .zsh_aliases
alias vi='vim'

# human-friendly key identifiers
zmodload zsh/terminfo
typeset -gA key_info
key_info=(
  'Control'      '\C-'
  'ControlLeft'  '\e[1;5D \e[5D \e\e[D \eOd'
  'ControlRight' '\e[1;5C \e[5C \e\e[C \eOc'
  'Escape'       '\e'
  'Meta'         '\M-'
  'Backspace'    "^?"
  'Delete'       "^[[3~"
  'F1'           "$terminfo[kf1]"
  'F2'           "$terminfo[kf2]"
  'F3'           "$terminfo[kf3]"
  'F4'           "$terminfo[kf4]"
  'F5'           "$terminfo[kf5]"
  'F6'           "$terminfo[kf6]"
  'F7'           "$terminfo[kf7]"
  'F8'           "$terminfo[kf8]"
  'F9'           "$terminfo[kf9]"
  'F10'          "$terminfo[kf10]"
  'F11'          "$terminfo[kf11]"
  'F12'          "$terminfo[kf12]"
  'Insert'       "$terminfo[kich1]"
  'Home'         "$terminfo[khome]"
  'PageUp'       "$terminfo[kpp]"
  'End'          "$terminfo[kend]"
  'PageDown'     "$terminfo[knp]"
  'Up'           "$terminfo[kcuu1]"
  'Left'         "$terminfo[kcub1]"
  'Down'         "$terminfo[kcud1]"
  'Right'        "$terminfo[kcuf1]"
  'BackTab'      "$terminfo[kcbt]"
)

# Set empty $key_info values to an invalid UTF-8 sequence to induce silent
# bindkey failure.
for key in "${(k)key_info[@]}"; do
  if [[ -z "$key_info[$key]" ]]; then
    key_info[$key]='�'
  fi
done

# history search
#bindkey '^R' history-incremental-search-backward
#bindkey '^S' history-incremental-search-forward
bindkey $key_info[Up] history-search-backward
bindkey $key_info[Down] history-search-forward
# bindkey -M viins '^r' history-incremental-pattern-search-backward
# bindkey -M vicmd '^r' history-incremental-pattern-search-backward
#zmodload zsh/terminfo
#bindkey "$terminfo[kcuu1]" history-substring-search-up
#bindkey "$terminfo[kcud1]" history-substring-search-down

bindkey $key_info[Home] beginning-of-line
bindkey $key_info[End] end-of-line

setopt AUTO_CD

# fast manpage access
#autoload -U run-help
#autoload run-help-git
#autoload run-help-svn
#export HELPDIR=~/zsh_help

ENABLE_CORRECTION="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"

# history
setopt append_history histignorealldups sharehistory
HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=1000

# extended globbing, see: http://zsh.sourceforge.net/Intro/intro_2.html#SEC2
setopt extendedglob

# temporary fix
unset GREP_OPTIONS
alias grep='grep --color=auto'

# Use modern completion system
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

source ~/.zplugrc

#PROMPT='%{$fg[magenta]%}%n%{$reset_color%} @ %{$fg[yellow]%}%m%{$reset_color%} $ '
#RPROMPT='[%*]'

PATH="${PATH}:/home/cedric/bin"
PATH="${PATH}:${HOME}/.npm-global/bin"
PATH="${PATH}:/home/cedric/node_modules/.bin"
PATH="${PATH}:/home/cedric/node_modules/.bin"
PATH="${PATH}:/usr/lib/chromium-browser/"
PATH="${HOME}/.yarn/bin:$PATH"
ANDROID_SDK="$HOME/tools/android-sdk-linux"
PATH="${ANDROID_SDK}/platform-tools/:${ANDROID_SDK}/tools/:$PATH"
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# added by travis gem
[ -f /home/cedricmessiant/.travis/travis.sh ] && source /home/cedricmessiant/.travis/travis.sh
