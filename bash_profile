# .bash_profile

# Get the aliases and functions
alias a='alias'
alias i='icfb &'
alias v='virtuoso &'
alias sb='source ~/.bashrc'
alias g='gvim'
alias gv='gvim'
alias gdiff='gvimdiff'
a cd..='cd ..'
a ..='cd ..'
a ...='cd ../..'
a ....='cd ../../../'
a cp='cp r'
a la='ls -lrta'
a lh='ls -lhv'
a l='ls -lhv'
a lt='ls -lrth'
a df='df -l'
a du='du -ks'
a ln='ln -s'
a nau='nautilus' 
a nau.='nautilus .'
a rm='/home/wyz/Documents/perl/del.pl'
#查找 文本1包含参数2的所有行
function cap() {
  cat "$1" | grep "$2"
}

function ff() {
  find . -name "$@"
}

function gp() {
  grep -lri "$@" .
}
#打印文本3从参数1到参数2的所有行
function pseg() {
  sed -n "/$1/,$2/p" "$3"
}

# User specific environment and startup programs


