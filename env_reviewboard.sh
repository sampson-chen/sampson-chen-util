#!/bin/bash

export sh_uri=$rb_script_dir/env_reviewboard.sh

# Print this document
alias me='cat $sh_uri'

# === ReviewBoard convenience scripts ===

# cd to reviewboard directory
alias rb='cd ~/src/reviewboard/'
# convert json to pretty json
alias pj='python -mjson.tool'
# Set up virtual environment for RB
alias verb='. ~/envs/reviewboard/bin/activate'
alias verb16='. ~/envs/rb-release.1.6.x/bin/activate'
alias uverb='deactivate'
# fill-database (MUST run this in ~/src/reviewboard/)
alias rbfilldb='cd ~/src/reviewboard/; ./reviewboard/manage.py fill-database -v 2 -u 20 -p aaaaa --review-requests=2:5 --reviews=1:3 --diffs=1:3 --diff-comments=2:4'
# Generate a set of long random string to be used for file names (issue 2751)
alias gen_ran_str='cat /dev/urandom|tr -dc "a-zA-Z0-9-_\$\?"|fold -w 9|head'
# Run RB dev server
alias rbds='rb; ./contrib/internal/devserver.py'
# git pull master on all 3 src directories:
alias git_rb_all='
    cd ~/src/djblets;
    git checkout master;
    git pull;
    cd ~/src/rbtools;
    git checkout master;
    git pull;
    cd ~/src/reviewboard;
    git checkout master;
    git pull;
    '
