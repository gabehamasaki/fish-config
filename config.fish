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

function c -d "cd ~/code <dir>"
    if count $argv > /dev/null
        if contains -- -s $argv[1]
            mkdir $HOME/code/$argv[2] && cd $HOME/code/$argv[2]
        else if contains -- -r $argv[1]
            rm -rf $HOME/code/$argv[2]
        else 
            cd $HOME/code/$argv[1]
        end
    else 
        cd $HOME/code
    end
end

function new-project -d "Create a new project laravel with typescript and react/vue/blade"
    laravel new $argv[1] --typescript --breeze --stack=$argv[2] --git --no-interaction
end
