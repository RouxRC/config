alias cd..='cd ..'
alias cp='cp -i'
alias la='ls -A'
alias ll='ls -l'
alias lrth='ls -larth'
alias md='mkdir'
alias mv='mv -i'
alias rd='rmdir'
alias rm='rm -i'
alias vi='vim'
alias wl='wc -l'
alias count='sort | uniq -c'
alias gti='git'
alias json='python -m json.tool'
alias serve='python -m SimpleHTTPServer'
alias unichar="sed 's/\(.\)/\1\n/g' | grep -iv '[a-z0-9]' | sort -u"

if which thefuck > /dev/null; then
  alias wat='$(thefuck $(fc -ln -1))'
fi
