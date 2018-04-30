function bobthefish_colors -S -d 'Define a custom bobthefish color scheme'

  # Set terminal colors using base16-shell, and also export the Base16 colors as
  # hex codes for BobTheFish to use below
  base16_set_theme eighties

  # optionally include a base color scheme...
  #___bobthefish_colors default

  # then override everything you want! note that these must be defined with `set -x`
  set -x color_initial_segment_exit  $__theme_base00 $__theme_base08 --bold
  set -x color_initial_segment_su    $__theme_base00 $__theme_base0C --bold
  set -x color_initial_segment_jobs  $__theme_base00 $__theme_base0D --bold

  set -x color_username              $__theme_base02 $__theme_base0B
  set -x color_hostname              $__theme_base02 $__theme_base0C --bold

  set -x color_path                  $__theme_base01 $__theme_base05
  set -x color_path_basename         $__theme_base01 $__theme_base05 --bold
  set -x color_path_nowrite          $__theme_base01 $__theme_base05
  set -x color_path_nowrite_basename $__theme_base01 $__theme_base08 --bold

  set -x color_repo                  $__theme_base02 $__theme_base0F
  set -x color_repo_work_tree        $__theme_base06 $__theme_base08 --bold
  set -x color_repo_dirty            $__theme_base02 $__theme_base09
  set -x color_repo_staged           $__theme_base02 $__theme_base09

  set -x color_vi_mode_default       $__theme_base0B $__theme_base00 --bold
  set -x color_vi_mode_insert        $__theme_base0D $__theme_base00 --bold
  set -x color_vi_mode_visual        $__theme_base0E $__theme_base00 --bold

  set -x color_vagrant               $__theme_base02 $__theme_base0A --bold
  set -x color_desk                  $__theme_base02 $__theme_base0A --bold
  set -x color_rvm                   $__theme_base08 $__theme_base00 --bold
  set -x color_virtualfish           $__theme_base0C $__theme_base00 --bold
  set -x color_virtualgo             $__theme_base0C $__theme_base00 --bold
end
