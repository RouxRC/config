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
alias json='python3 -m json.tool'
alias lowercase='sed -r "s/(.*)/\L\1/"'
alias serve='python2 -m SimpleHTTPServer'
alias unichar="awk '{for(i=1;i<=NF;i++)if("'!'"a[\$i]++)print \$i}' FS=\"\" | sort | grep -vi '[a-z0-9]' | sed 's/.*/\`&\`/'"
alias unichar2="sed 's/\(.\)/\1\n/g' | grep -iv '[a-z0-9]' | sort -u | grep ."
alias resolve="curl -w "%{url_effective}" -LsS --insecure --max-redirs 10 -o /dev/null"
#alias pypush='python setup.py sdist upload -r pypi'
alias pypush='python3 setup.py sdist && twine upload dist/*.tar.gz'
alias piptestinstall='pip install --index-url https://test.pypi.org/simple/ --extra-index-url https://pypi.org/simple'
function add2virtualenv {
  pyenv_pth=$(pyenv prefix)
  pth=$(ls $pyenv_pth/lib/ | grep python)/site-packages
  pwd > $pyenv_pth/lib/$pth/$1.pth
}

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
function tweet_datetime {
  tweet_id=$(echo $1 | sed -r 's#^http.*twitter.com/.*/status/##' | sed -r 's/[?#].*$//g')
  timestamp=$(python -c "print((($tweet_id >> 22) + 1288834974657) / 1000)")
  date -d "@$timestamp" --iso-8601=ns
}

alias k='kubectl'

alias elastic="docker run --name ELASTIC-7.13 --net elastic -p 127.0.0.1:9200:9200 -p 127.0.0.1:9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.13.2"
alias kibana="docker run --name KIBANA-7.13 --net elastic -p 127.0.0.1:5601:5601 -e "ELASTICSEARCH_HOSTS=http://ELASTIC-7.13:9200" docker.elastic.co/kibana/kibana:7.13.2"

alias scrapyd="cd /var/lib/scrapyd && pyenv activate scrapyd && scrapyd"

alias histogram="uniq -c | awk '{\$1=sprintf(\"%-*s\", \$1, \"\"); gsub(\" \", \"=\", \$1); printf(\"%-10s %s\n\", \$2, \$1)}'"

