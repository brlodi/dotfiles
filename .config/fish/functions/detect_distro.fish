# Find the disto name of the current OS, if possible. Useful for calling the
# correct package manager (brew, apt, pacman, etc.) for the current system,
# but for most other things just knowing the kernel (from 'uname -s') is
# probably sufficient 
function detect_distro
  set distro 'unknown'
  if test (uname -s) = 'Darwin'
    set distro 'macOS' # Sorry to the 7 people who built Darwin from source
  else if test (uname -s) = 'Linux'
    set distro_file_contents ''
    if test -f /etc/os-release
      set distro_file_contents (cat /etc/os-release)
    else if test -f /etc/lsb-release
      set distro_file_contents (cat /etc/lsb-release)
    end
    
    # We check Arch and Debian first and separately because their derivatives
    # sometimes still report those names, e.g. Ubuntu still contains many
    # references to the upstream Debian it was based on, and case statements
    # in fish do not fall through
    switch distro_file_contents
      case '*arch*' '*Arch*'
        set distro 'Arch'
      case '*debian*' '*Debian*'
        set distro 'Debian'
    end
    switch distro_file_contents
      case '*manjaro*' '*Manjaro*'
        set distro 'Manjaro'
      case '*ubuntu*' '*Ubuntu*'
        set distro 'Ubuntu'
    end
  end
  
  echo $distro
end

