. "$HOME/.config/fish/aliases.fish"
. "$HOME/.config/fish/functions/fzf_functions.fish"
. "$HOME/.config/fish/functions/main_functions.fish"
. "$HOME/.config/fish/colors.fish"

export NVM_DIR=~/.nvm
# source (brew --prefix nvm)/nvm.sh

# FLUTTER
set -x PATH "/Users/cotoha/Documents/libs/flutter/bin" $PATH

# JAVA
export JAVA_HOME=(/usr/libexec/java_home)

# Rust
set -x PATH $HOME/.cargo/bin $PATH

# Android SDK
set -x PATH $HOME/Library/Android/sdk $PATH
set -x PATH $HOME/Library/Android/sdk/platform-tools $PATH

#ASDF SETUP
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# NODE PATH
set -g fish_user_paths "/usr/local/opt/node@10/bin" $fish_user_paths

# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf

# PYENV SETUP
set -x PATH "$HOME/.pyenv/bin" $PATH
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile
echo 'if [ -n "$PS1" -a -n "$BASH_VERSION" ]; then source ~/.bashrc; fi' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source


#rbenv init - | source
