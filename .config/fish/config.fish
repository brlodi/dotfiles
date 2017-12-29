# If we start fish from Bash, it will inherit 'bash' as the value of $SHELL
# but we're running fish so it should be 'fish'
set -xg SHELL fish


###############################################################################
#####                              General                                #####
###############################################################################

# Source the iTerm 2 shell integration script if it exists
if test -e {$HOME}/.iterm2_shell_integration.fish
  source {$HOME}/.iterm2_shell_integration.fish
end


###############################################################################
#####                               Visual                                #####
###############################################################################

# Turn off path name truncation (by default shows only first letter)
set -U fish_prompt_pwd_dir_length 0


# ----------------------------- BobTheFish theme ---------------------------- #

set -g theme_nerd_fonts yes
set -g default_user brlodi
set -g theme_display_vagrant yes
set -g theme_show_exit_status yes

set -g theme_color_scheme user

set -g __color_initial_segment_exit  brgreen red --bold
set -g __color_initial_segment_su    brgreen green --bold
set -g __color_initial_segment_jobs  brgreen blue --bold

set -g __color_username              brgreen green --bold
set -g __color_hostname              brgreen blue

set -g __color_path                  bryellow white
set -g __color_path_basename         bryellow white --bold
set -g __color_path_nowrite          bryellow white
set -g __color_path_nowrite_basename bryellow red --bold

set -g __color_repo                  brgreen brred
set -g __color_repo_work_tree        brred black --bold
set -g __color_repo_dirty            brgreen red
set -g __color_repo_staged           brgreen yellow

set -g __color_vi_mode_default       green black --bold
set -g __color_vi_mode_insert        blue black --bold
set -g __color_vi_mode_visual        magenta black --bold

set -g __color_vagrant               brgreen white --bold
set -g __color_rvm                   brgreen red --bold
set -g __color_virtualfish           brgreen cyan --bold
set -g __color_virtualgo             brgreen cyan --bold
