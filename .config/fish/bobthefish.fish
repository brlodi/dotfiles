set -g default_user brlodi
set -g theme_display_vagrant yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes

# Colors
set -g theme_color_scheme user
set -g __color_initial_segment_exit  red black --bold
set -g __color_initial_segment_su    white red --bold
set -g __color_initial_segment_jobs  bryellow blue --bold

set -g __color_username              blue black

set -g __color_path                  brgreen white
set -g __color_path_basename         brgreen white --bold
set -g __color_path_nowrite          brgreen brred
set -g __color_path_nowrite_basename brgreen brred --bold

set -g __color_repo                  bryellow yellow --bold
set -g __color_repo_work_tree        brred black --bold
set -g __color_repo_dirty            bryellow brred --bold
set -g __color_repo_staged           bryellow yellow --bold

set -g __color_vi_mode_default       blue black --bold
set -g __color_vi_mode_insert        green black --bold
set -g __color_vi_mode_visual        bryellow black --bold

set -g __color_vagrant               cyan black
set -g __color_rvm                   magenta black --bold
set -g __color_virtualfish           green black --bold