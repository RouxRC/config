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
alias sum="awk '{s += \$1} END {print s}'"
alias gti='git'
alias json='python -m json.tool'
alias serve='python -m SimpleHTTPServer'
alias unichar="awk '{for(i=1;i<=NF;i++)if("'!'"a[\$i]++)print \$i}' FS=\"\" | sort | grep -vi '[a-z0-9]' | sed 's/.*/\`&\`/'"
alias unichar2="sed 's/\(.\)/\1\n/g' | grep -iv '[a-z0-9]' | sort -u | grep ."
alias resolve="curl -w "%{url_effective}" -LsS --insecure --max-redirs 10 -o /dev/null"
#alias pypush='python setup.py sdist upload -r pypi'
alias pypush='python setup.py sdist && twine upload dist/*.tar.gz'

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
