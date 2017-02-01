#
# Script Vars
#

# Colors and stuffs
LIGHTCOLOR="\e[0;"
DARKCOLOR="\e[1;"
BLUE="34m"
GREEN="32m"
CYAN="36m"
RED="31m"
PURPLE="35m"
YELLOW="33m"
ENDCOLOR="\e[0m"

# 
# Aliases
# 

# Safeguarding rm, cp, and mv
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Misc
alias h='history'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

# Blippar shortcuts
alias blipp="cd ~/work/src/github.com/blippar"
alias blipp_test="cd ~/work/src/github.com/blippar-test"
alias celeborn="cd ~/work/src/github.com/blippar-test/celeborn"

# Add colors for filetype and  human-readable sizes by default on 'ls':
alias l='ls'
alias ls='ls -hG'
alias la='ls -la'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
# alias ll="ls -lv --group-directories-first"
# alias lm='ll |more'        #  Pipe through 'more'
# alias lr='ll -R'           #  Recursive ls.
# alias la='ll -A'           #  Show hidden files.
# alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

# 
# Exports
# 

# PS1
export PS1="\[$LIGHTCOLOR$PURPLE\]\u\[$ENDCOLOR\] - \[$LIGHTCOLOR$BLUE\]\W :\[$ENDCOLOR\] \[$LIGHTCOLOR$GREEN\]"
trap "[[ -t 1 ]] && tput sgr0" DEBUG

# set default editor
export EDITOR=/usr/bin/emacs

# 
# Go env stuff
# 
export GOPATH=$HOME/work
export PATH=$PATH:/Users/josquingaillard/work/protoc-3.2.0rc2-osx-x86_64/
export PATH=$PATH:$GOPATH/bin
