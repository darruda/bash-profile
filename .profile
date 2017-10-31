Color_Off="\[\033[0m\]"       # Text Reset
Red="\[\033[1;31m\]"          # Red
Green="\[\033[1;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
BYellow="\[\033[1;33m\]"       # Yellow
PathShort="\w"
function GetBranchName() {
echo `git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/"`;
}
export -f GetBranchName

export PS1=$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
 if [ "$?" -eq "0" ]; then \
   # @4 - Clean repository - nothing to commit
   echo "'$Green'($(GetBranchName))"; \
 else \
   # @5 - Changes to working tree
   echo "'$Red'($(GetBranchName))"; \
 fi) '$BYellow$PathShort$Color_Off' \n\$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Yellow$PathShort$Color_Off' \n\$ "; \
fi)'

function GetBranch() {
Color_Off="\e[0m\]"       # Text Reset
local RED='\\[\033[1;31m\]'
  local GREEN="\e[01;32m\]"
 
  Yellow="\e[0;33m\]"       # Yellow
local BRANCH=`git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/"`;
#local BRANCH=`git branch 2> /dev/null | grep -e ˆ* | awk '{print $2}'`;
    
    GIT_STATUS=`git status 2> /dev/null`
    # local Status=`git status 2> /dev/null | grep "Unmerged paths" > /dev/null 2>&1`;
    if [ "$?" -eq 0 ] # Diretório com projeto GIT
    then
    echo $GIT_STATUS | grep "nothing to commit" > /dev/null 2>&1
   if [ "$?" -eq 0 ]
   then
     PROMPT="$GREEN($BRANCH)";
   else
     PROMPT="$RED{$BRANCH}";
   fi
    fi

    echo "$PROMPT";
}

# Use "declare -x -F" to list the functions and "declare -x -f" to see the implementation
export -f GetBranch

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad