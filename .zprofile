export TERM="xterm-256color"
export DEFAULT_USER="cedricmessiant"
#export EDITOR='sublime'
export EDITOR='vim'
export ANDROID_HOME="${HOME}/tools/android-sdk-linux"

PATH="${PATH}:/home/cedricmessiant/bin"
PATH="${PATH}:/home/cedricmessiant/node_modules/.bin"
PATH="${PATH}:/home/cedricmessiant/node_modules/.bin"
PATH="${PATH}:/usr/lib/chromium-browser/"

# ANDROID_SDK="$HOME/tools/android-sdk-linux"
# PATH="$ANDROID_SDK/platform-tools/:$ANDROID_SDK/tools/:$PATH"
export PATH

source /etc/profile.d/infinality-settings.sh
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/lib/python2.7/dist-packages/virtualenv.py
#export VIRTUALENVWRAPPER_VIRTUALENV_CLONE=/usr/local/lib/python2.7/dist-packages/clonevirtualenv.py
source /usr/local/bin/virtualenvwrapper.sh
