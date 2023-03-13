# alias ngrok="$HOME/ngrok"

# System
alias show_port_usage='sudo lsof -i -P | grep LISTEN | grep'

# VimR
# alias vimr="open -a VimR.app $argv"
alias open_vim_conf="nvim /Users/cotoha/.config/nvim"

# Flutter
alias flutter_build_runner_watch="flutter packages pub run build_runner watch --delete-conflicting-outputs"

#Mongo
alias mongo_start="/Users/cotoha/Documents/mongodb/bin/mongod"

# Folders
alias projects="cd ~/Documents/projects"
alias learning="cd /Users/cotoha/Documents/learning"

#Projects
alias apidocs="apidoc -i server/api/controllers -o server/apidoc"
alias friday="cd /Users/cotoha/Documents/projects/friday"
alias zeneducate="cd /Users/cotoha/Documents/projects/zeneducate"

# GIT
alias gb="git branch"
alias gs="git status"

# RAILS
alias kill_ruby="sh /Users/cotoha/.config/fish/functions/kill_ruby.sh"
alias br="bin/rake"
alias bs="bin/rails"
