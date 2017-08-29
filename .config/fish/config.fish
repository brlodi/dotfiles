# If we start fish from Bash, it will inherit 'bash' as the value of $SHELL
# but we're running fish so it should be fish
set -xg SHELL fish

# Source the iTerm 2 shell integration script if it exists
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

set -U fish_prompt_pwd_dir_length 0

# Shell theme, with config overrides
test -e {$HOME}/.config/fish/bobthefish.fish ; and source {$HOME}/.config/fish/bobthefish.fish

status --is-interactive; and source (nodenv init -|psub)
eval (thefuck --alias | tr '
' ';')
