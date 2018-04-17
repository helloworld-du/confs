function div_line () {
  cmd=$1
  echo "\n=================={$cmd}==================\n"
}

function div_start() {
  name=" START - $1 "
  echo "\n"
  div_line "$name"
}

function div_end() {
  name="  END - $1  "
  div_line "$name"
}

# function install_brew() {
#   div_start brew
#   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#   div_end brew
# }

function install_brew() {
  obj="brew"
  div_start $obj
  check_cmd_exist $obj
  if [ $? -eq 1 ];then
    echo "{$obj} is exist!\n"
    div_end $obj
    return 0
  fi
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  div_end $obj
}

function check_cmd_exist() {
  cmd=$1
  cmd=`which cmd`
  if [ -f $cmd ];then
    return 1
  else
    return 0
  fi
}


function install_cmd_by_brew() {
  obj=$1
  div_start $obj
  check_if_exist_by_brew $obj
  if [ $? -eq 1 ];then
    echo "{$obj} is exist!\n"
    div_end $obj
    return 0
  fi
  brew install $obj
  div_end $obj
}

function check_if_exist_by_brew() {
  cmd=$1
  cmd=`brew list | grep $1`
  if [ -n "$cmd" ];then
    return 1
  else
    return 0
  fi
}
