# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/matt/.sdkman"
[[ -s "/home/matt/.sdkman/bin/sdkman-init.sh" ]] && source "/home/matt/.sdkman/bin/sdkman-init.sh"

# Set GRAILS_HOME
export PATH="$GRAILS_HOME/bin:$PATH"

# Set GROOVY_HOME
export PATH="$GROOVY_HOME/bin:$PATH"

echo 'finished sourcing .bash_profile'
echo $PATH

