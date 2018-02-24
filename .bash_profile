# Automatically drop into fish (the Friendly Interactive SHell) if available
#   I do this here instead of changing my default shell on each system because
#   I work with several machines that do complicated stuff in the system bash
#   profile (not in my control). Some also don't even have fish installed.
#   Also because this only runs in login shells I can manually start a Bash
#   shell without then getting thrown straight into fish
command -v fish >/dev/null 2>&1 && exec fish

# If we didn't make it into fish, do some basic bash config instead

# Source the iTerm 2 shell integration script if it exists
if [[ -e ${HOME}/.config/iterm2/.iterm2_shell_integration.bash ]]; then
  source ${HOME}/.config/iterm2/.iterm2_shell_integration.bash
fi

# Set color theme
theme=eighties
if [[ $- == *i* && -e ${HOME}/.config/base16-shell/scripts/base16-${theme}.sh ]]; then
  eval sh ${HOME}/.config/base16-shell/scripts/base16-${theme}.sh
fi
unset theme

# Set colors for ls command (for BSD-likes and GNU respectively)
export LSCOLORS="ExfxcxdxbxagadabafHeBe"
export LS_COLORS="di=1;34:ln=35:so=32:pi=33:ex=31:bd=30;46:cd=30;43:su=30;41:sg=30;45:tw=1;37;44:ow=1;31;44"

# Some basic utility aliases
alias ll="ls -lh"
alias la="ls -lah"

