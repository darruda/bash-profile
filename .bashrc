# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

### Git Branch prompt

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

# eval "$(direnv hook bash)"

### rbenv configurations
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# ssh-auth


