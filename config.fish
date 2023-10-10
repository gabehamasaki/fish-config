if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

# Java
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# PhP
export PATH="$PATH:$HOME/.config/composer/vendor/bin/"

# Ruby
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

# Go
export GOROOT="/home/gabrielhamasaki/.gvm/versions/go1.21.1.linux.amd64"
export PATH="/home/gabrielhamasaki/.gvm/versions/go1.21.1.linux.amd64/bin:$PATH"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

# Yarn bin
export PATH="$PATH:$HOME/.yarn/bin"

# Bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH


alias art="php artisan"
