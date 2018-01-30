alias cd..='cd ..'
alias cp='cp -i'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias lrth='ls -larth'
alias md='mkdir'
alias mv='mv -i'
alias rd='rmdir'
alias rm='rm -i'
alias rgrep='grep -r'
alias vi='vim'
alias wl='wc -l'
alias count='sort | uniq -c'
alias gti='git'
alias json='python -m json.tool'
alias serve='python -m SimpleHTTPServer'
alias unichar="sed 's/\(.\)/\1\n/g' | grep -iv '[a-z0-9]' | sort -u"
alias resolve="curl -w "%{url_effective}" -LsS --insecure --max-redirs 10 -o /dev/null"

if which thefuck > /dev/null 2>&1; then
  alias wat='$(thefuck $(fc -ln -1))'
fi

function likes {
  echo $1
  curl -sLS --insecure "https://www.facebook.com/plugins/like.php?href=$1&layout=box_count" |
   grep u_0_0           |
   head             -1  |
   sed 's|^.*u_0_0">||' |
   sed "s|</span>.*$| likes|"
}
