# Setting PATH for Python 2.7
 # The original version is saved in .bash_profile.pysave
 PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
 export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
 export PATH="$HOME/.node/bin:$PATH"
 source "/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh"
 # Git branch in prompt. 
 
 parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
 }
 
 export PS1="\u\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
 
 # Git auto-complete
 source /usr/local/git/contrib/completion/git-completion.bash
 
 # customize command to enter work mode
 alias ht='cd ~/PycharmProjects/hottooth'
 alias fire='source /Users/hangxu/PycharmProjects/ph/ph/bin/activate'
 alias edit='vi ~/.bash_profile'
 alias run='python manage.py runserver'
 alias refresh='source ~/.bash_profile'
 alias c='clear'
 alias check='git diff HEAD | flake8 --diff'
 alias fasttest='python manage.py test --parallel=8'
 alias show='python manage.py show_urls'
 alias pyc_go_away='find . -name '*.pyc' -delete'
 alias mshow='python manage.py showmigrations'
 alias mmake='python manage.py makemigrations'
 alias mmigrate='python manage.py migrate'
