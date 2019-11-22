function kp --description "Kill processes"
  set -l __kp__pid (ps -ef | sed 1d | eval "fzf $FZF_DEFAULT_OPTS -m --header='[kill:process]'" | awk '{print $2}')
  set -l __kp__kc $argv[1]

  if test "x$__kp__pid" != "x"
    if test "x$argv[1]" != "x"
      echo $__kp__pid | xargs kill $argv[1]
    else
      echo $__kp__pid | xargs kill -9
    end
    kp
  end
end

function vim_search --description "Rg search files and open in vim"
  nvim (rg --files --hidden ~ | fzf)
end

function go_to_file --description 'Cd to file location'
  cd (dirname (rg --files --hidden ~ | fzf))
end

function import_db --description 'Import db dump to database'
  psql $argv < (rg --files ~ | fzf)
end
