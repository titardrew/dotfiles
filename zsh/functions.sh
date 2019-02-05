function sshadd() {
  if [ -f $HOME/.ssh/config ]
  then
    touch -f $HOME/.ssh/config
  fi
  if [ -z "$4" ]
  then
    echo Host $1\\n\\tHostName $2\\n\\tUser $3\\n >> $HOME/.ssh/config
    echo Host $1 = $3@$2 added
  else
    echo Host $1\\n\\tHostName $2\\n\\tUser $3\\n\\tIdentityFile $4\\n >> $HOME/.ssh/config
    echo Host $1 = $3@$2 \| key: $4
  fi
}


function sshedit() {
  if [ -x "$(command -v nvim)" ]
  then
    nvim $HOME/.ssh/config
  else
    vim $HOME/.ssh/config
  fi
}


function sshls() {
  if [ -z "$1" ]
  then
    cat $HOME/.ssh/config
  else
    grep -A 4 -i "Host "$1 $HOME/.ssh/config
  fi
}


function jn() {
  if [ -z "$1" ]
  then
    jupyter notebook
  else
    if [ "$1" = "--help" ]
    then
      echo "Usage: jn [dir] [venv] [port]"
    else
      if [ -z "$2" ]
      then
        cd $1
        jupyter notebook
      else
        if [ -z "$3" ]
        then
          cd $1 
          venv $2
          jupyter notebook
        else
          cd $1
          venv $2
          jupyter notebook --port=$3
        fi
      fi
    fi
  fi
}
