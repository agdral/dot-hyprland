[
  "$HyprOm, B, exit"
  "$HyprOm, M, exec, poweroff"

  "$HyprOm, P, exec, grimblast copy area"
  "$HyprRm, P, exec, grimblast save area"

  ", $F20, exec, pkill -SIGUSR1 waybar"
]
