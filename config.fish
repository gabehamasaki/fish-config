if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
source ~/.asdf/asdf.fish

export PATH="$PATH:/bin/squashfs-root/usr/bin/"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="/home/gabriel/.local/bin:$PATH"

export PATH="$PATH:$HOME/.config/composer/vendor/bin/"
export PATH="/home/gabriel/.asdf/shims:$PATH"
export PATH="$PATH:$HOME/.yarn/bin"

# GO
export PATH="$PATH:/usr/local/go/bin"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# ALIASES

alias n="nvim"
alias art="php artisan"
alias p="pnpm"
alias ga="git add"
alias gs="git status -s"
alias gc="git commit -m"
alias gp="git push"
alias checkout="git checkout"
