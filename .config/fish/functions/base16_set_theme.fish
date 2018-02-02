function base16_set_theme -d "Set terminal colors with Base16-Shell and output named variables"
  set -l theme $argv
  set -l base16_shell_dir "$HOME/.config/base16-shell"
  set -l base16_theme_script "$base16_shell_dir/scripts/base16-$theme.sh"
  set -l colortest "$base16_shell_dir/colortest"
  if test -e {$base16_theme_script}
    eval sh {$base16_theme_script}
    set -l colortest_output (eval $colortest "base16-$theme.sh")
    for line in $colortest_output
      set -l varname (string match -r "base[a-fA-F0-9]{2}" $line)
      set -g "__theme_$varname" (string match -r "[a-fA-F0-9]{6}" $line)
    end
  else
    # Establish named 16-color fallbacks for BobTheFish to use. This won't
    # look very good, but it at least won't break the prompt
    set -g __theme_base00 black
    set -g __theme_base01 black
    set -g __theme_base02 brblack
    set -g __theme_base03 brblack
    set -g __theme_base04 white
    set -g __theme_base05 white
    set -g __theme_base06 brwhite
    set -g __theme_base07 brwhite
    set -g __theme_base08 red
    set -g __theme_base09 yellow
    set -g __theme_base0A yellow
    set -g __theme_base0B green
    set -g __theme_base0C cyan
    set -g __theme_base0D blue
    set -g __theme_base0E magenta
    set -g __theme_base0F magenta
  end
end
