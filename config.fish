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

# Go
export PATH="$PATH:$HOME/.gvm/scripts/gvm"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

# Androind
export ANDROID_HOME="/home/gabriel/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"

# Deno
export PATH="$PATH:$HOME/.dvm/bin"
export PATH="$PATH:$HOME/.yarn/bin"

# LVIM
export PATH="$PATH:$HOME/.local/bin"

# Aliases

alias art="php artisan"         

function v -d "nvim"
    if count $argv > /dev/null
        nvim $argv
    end
    nvim 
end

function new-project -d "Create a new project laravel with typescript and react/vue/blade"
    laravel new $argv[1] --typescript --breeze --stack=$argv[2] --git --no-interaction
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
