# If we start fish from Bash, it will inherit 'bash' as the value of $SHELL
# but we're running fish so it should be fish
set -xg SHELL fish

# Source the iTerm 2 shell integration script if it exists
if test -e {$HOME}/.iterm2_shell_integration.fish
  source {$HOME}/.iterm2_shell_integration.fish
end

# Turn off working directory path name truncation
set -U fish_prompt_pwd_dir_length 0

# Shell theme, with config overrides
if test -e {$HOME}/.config/fish/bobthefish.fish
  source {$HOME}/.config/fish/bobthefish.fish
end

if begin status --is-interactive; and nodenv -v > /dev/null ^ /dev/null; end
  source (nodenv init -|psub)
end

if begin status --is-interactive; and thefuck -v > /dev/null ^ /dev/null; end
  eval (thefuck --alias | tr '
' ';')
end

