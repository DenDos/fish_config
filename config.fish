. "$HOME/.config/fish/aliases.fish"
. "$HOME/.config/fish/functions/fzf_functions.fish"

set -x PATH "~/Library/Python/3.4/bin" $PATH
set -x PATH "/opt/local/libexec/qt4/bin" $PATH
set -x PATH "~/.nvm/" $PATH

set -x PATH "$HOME/Android/tools" $PATH
set -x PATH "$HOME/Android/platform-tools" $PATH
set -x PATH "$HOME/terraform" $PATH
set -x PATH "$HOME/Library/Python/3.7/bin" $PATH
set -x PATH $HOME/.rbenv/bin $PATH

set -x PATH "/usr/local/opt/python/libexec/bin/pip" $PATH
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -U JAVA_HOME (/usr/libexec/java_home)

set fish_color_search_match --background='333'

# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf

rbenv init - | source

function code
  set location "$PWD/$argv"
  open -n -b "com.microsoft.VSCode" --args $location
end

set -g fish_user_paths "/usr/local/opt/node@10/bin" $fish_user_paths
