#!/bin/bash
# adjust the paths to match your local dev environment

export sh_uri=$rb_script_dir/env_reviewboard.sh

# Print this document
alias me='cat $sh_uri'
# Edit this document
alias eme="vim $sh_uri"

# === ReviewBoard convenience scripts ===

# cd to reviewboard directory
export gorb=~/src/reviewboard
alias gorb="cd $gorb"
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
alias rbds='gorb; ./contrib/internal/devserver.py'
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
  
# Misc

# Testing the webapi
export test_output_file=~/reviewboard-sachen/issue2635/test_result.tmp
alias rb_test_webapi="cd $gorb; ./reviewboard/manage.py test -- reviewboard.webapi.tests:ReviewRequestResourceTests > $test_output_file 2>&1"
# Watch the output from the test being run
alias tailrbt="tail -f $test_output_file"
