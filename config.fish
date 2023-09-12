if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

# Ruby
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

# PhP
export PATH="$PATH:$HOME/.config/composer/vendor/bin/"

# JAVA
export JAVA_HOME="/home/gabriel/.java/jdk17"
export PATH="$PATH:$JAVA_HOME/bin"

# Androind
export ANDROID_HOME="/home/gabriel/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"

# Aliases

alias art="php artisan"         
alias c="cd $HOME/code"

function new-project -d "Create a new project laravel with typescript and react/vue/blade"
    laravel new $argv[0] --typescript --breeze --stack=$argv[2] --git --no-interaction
end
