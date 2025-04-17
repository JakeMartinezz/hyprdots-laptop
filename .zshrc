PROMPT="%F{#FFFFFF}╭─%F{#af00d1}%n %{%F{#808080}%}em %F{#008000}%B%~%b%f
%F{#FFFFFF}╰─%{%F{#FFFFFF}%}o %f"

if [ "$(tty)" = "/dev/tty1" ]; then
    Hyprland
fi

_sudo_wrapper() {
  if [[ "$1" == zypper && ( "$2" == install || "$2" == dup ) ]]; then
    command sudo env ZYPP_PCK_PRELOAD=1 "$@"
  else
    command sudo "$@"
  fi
}

alias sudo="_sudo_wrapper"

alias bateria="upower -i /org/freedesktop/UPower/devices/DisplayDevice"


