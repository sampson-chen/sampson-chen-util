#!/bin/bash

export sh_uri=~/load_environment.sh

# Print this document
alias me='cat $sh_uri'

# === ReviewBoard convenience scripts ===

# cd to reviewboard directory
alias rb='cd ~/src/reviewboard/'
# convert json to pretty json
alias pj='python -mjson.tool'
# Set up virtual environment for RB
alias verb='. ~/envs/reviewboard/bin/activate'
alias uverb='deactivate'
# Run RB dev server
alias rbds='rb; ./contrib/internal/devserver.py'
# git pull master on all 3 src directories:
alias git_rb_all='
    cd ~/src/djblets;
    git checkout master;
    git pull;
    cd ~/src/reviewboard;
    git checkout master;
    git pull;
    cd ~/src/rbtools;
    git checkout master;
    git pull;
    '

# === SmileForward convenice scripts ===
alias go='cd ~/SmileForward/smileforward-backend/sfsite/smileforward/'
