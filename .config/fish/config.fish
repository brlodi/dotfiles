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

# Set terminal colors using base16-shell, and also export the Base16 colors as
# hex codes for BobTheFish to use below
base16_set_theme eighties


# ----------------------------- BobTheFish theme ---------------------------- #

set -g theme_nerd_fonts yes
set -g default_user brlodi
set -g theme_display_vagrant yes
set -g theme_show_exit_status yes

set -g theme_color_scheme user

set -g __color_initial_segment_exit  $__theme_base00 $__theme_base08 --bold
set -g __color_initial_segment_su    $__theme_base00 $__theme_base0C --bold
set -g __color_initial_segment_jobs  $__theme_base00 $__theme_base0D --bold

set -g __color_username              $__theme_base02 $__theme_base0B
set -g __color_hostname              $__theme_base02 $__theme_base0C --bold

set -g __color_path                  $__theme_base01 $__theme_base05
set -g __color_path_basename         $__theme_base01 $__theme_base05 --bold
set -g __color_path_nowrite          $__theme_base01 $__theme_base05
set -g __color_path_nowrite_basename $__theme_base01 $__theme_base08 --bold

set -g __color_repo                  $__theme_base02 $__theme_base0F
set -g __color_repo_work_tree        $__theme_base06 $__theme_base08 --bold
set -g __color_repo_dirty            $__theme_base02 $__theme_base09
set -g __color_repo_staged           $__theme_base02 $__theme_base09

set -g __color_vi_mode_default       $__theme_base0B $__theme_base00 --bold
set -g __color_vi_mode_insert        $__theme_base0D $__theme_base00 --bold
set -g __color_vi_mode_visual        $__theme_base0E $__theme_base00 --bold

set -g __color_vagrant               $__theme_base02 $__theme_base0A --bold

set -g __color_rvm                   $__theme_base08 $__theme_base00 --bold
set -g __color_virtualfish           $__theme_base0C $__theme_base00 --bold
set -g __color_virtualgo             $__theme_base0C $__theme_base00 --bold

