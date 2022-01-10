. "$HOME/.config/fish/aliases.fish"
. "$HOME/.config/fish/functions/fzf_functions.fish"
. "$HOME/.config/fish/functions/main_functions.fish"

set -g fish_user_paths "/usr/local/opt/node@10/bin" $fish_user_paths

set fish_color_search_match --background='333'

# Path to Oh My Fish install.
set -gx OMF_PATH $HOME/.local/share/omf

rbenv init - | source

# source /opt/homebrew/opt/asdf/libexec/asdf.fish
