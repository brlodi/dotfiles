# If we start fish from Bash, it will inherit 'bash' as the value of $SHELL
# but we're running fish so it should be 'fish'
set -xg SHELL fish


###############################################################################
#####                              General                                #####
###############################################################################

# Source the iTerm 2 shell integration script if it exists
if test -e {$HOME}/.config/iterm2/.iterm2_shell_integration.fish
  source {$HOME}/.config/iterm2/.iterm2_shell_integration.fish
end


###############################################################################
#####                               Visual                                #####
###############################################################################

# Turn off path name truncation (by default shows only first letter)
set -U fish_prompt_pwd_dir_length 0

# Set colors for ls and related commands (for BSD ls and GNU ls, respectively)
set -x LSCOLORS ExfxcxdxbxagadabafHeBe
set -x LS_COLORS "di=1;34:ln=35:so=32:pi=33:ex=31:bd=30;46:cd=30;43:su=30;41:sg=30;45:tw=1;37;44:ow=1;31;44"

# Set options for the BobTheFish theme
set -g theme_nerd_fonts yes
set -g default_user brlodi
set -g theme_display_vagrant yes
set -g theme_show_exit_status yes

