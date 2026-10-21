local F20 = "XF86AudioMicMute"
local F21 = "XF86TouchpadToggle"
local F22 = "XF86TouchpadOn"
local F23 = "F23"
local HyprLm = "SUPER CONTROL"
local HyprOm = "SUPER ALT CONTROL"
local HyprRm = "SUPER ALT"
local ModS = "SUPER SHIFT"
local Modm = "SUPER"

hl.bind("SUPER + SHIFT + Q", hl.dsp.exec_cmd("firefox"))

-- bind=$HyprOm, M, exec, poweroff
-- bind=$HyprOm, P, exec, grimblast copy area
-- bind=$HyprRm, P, exec, grimblast save area
-- bind=, $F20, exec, pkill -SIGUSR1 waybar
-- bind=, $F23, exec, vicinae open
-- bind=,XF86AudioPlay, exec, playerctl play-pause
-- bind=,XF86AudioPrev, exec, playerctl previous
-- bind=,XF86AudioNext, exec, playerctl next
-- bind=$Modm, mouse_down, exec, pypr zoom ++0.5
-- bind=$Modm, mouse_up, exec, pypr zoom --0.5
-- bind=$HyprOm, 0, exec, hyprshot -m region -o /data/kael/Pictures/Screenshot
-- bind=$HyprOm, backslash, exec, hyprshot -m output -o /data/kael/Pictures/Screenshot
-- bind=$HyprOm, equal, exec, hyprshot -m window -o /data/kael/Pictures/Screenshot
-- bind=$HyprRm, I, exec, firefox -p secundary --name secundary https://gemini.google.com/ https://www.meta.ai/ https://chat.deepseek.com/ https://mail.proton.me/
-- bind=$HyprRm, Q, exec, spotify
-- bind=$HyprRm, K, exec, super-productivity
-- bind=$HyprRm, U, exec, obsidian
-- bind=$HyprRm, minus, exec, enteauth
-- bind=$HyprRm, Delete, exec, proton-pass
-- bind=$HyprRm, Escape, exec, io.github.hkdb.Aerion
-- bind=$HyprRm, A, exec, kitty --override=clear_all_shortcuts=yes --class=fileTerm yazi
-- bind=$HyprRm, O, exec, kitty --class=termL
-- bind=$HyprRm, E, exec, kitty --class=termR
-- bind=$HyprOm, R, exec, firefox --private-window
-- bind=$HyprRm, R, exec, firefox -p argonarch
-- bind=$HyprRm, T, exec, firefox -p studio
-- bind=$HyprLm, M, exec, otd applypreset Principal
-- bind=$HyprLm, W, exec, otd applypreset Figma
-- bind=$HyprLm, V, exec, otd applypreset Excalidraw
-- bind=$HyprLm, L, exec, hyprctl switchxkblayout redragon-k530-keyboard 0
-- bind=$HyprLm, slash, exec, hyprctl switchxkblayout redragon-k530-keyboard 1
-- bind=$HyprLm, D, exec, vncviewer --ViewOnly --DotWhenNoCursor=1 192.168.0.52
-- bind=$HyprRm, comma, exec, vncviewer --ViewOnly --DotWhenNoCursor=1 192.168.0.52
-- binde=,XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+
-- binde=,XF86AudioLowerVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%-


hl.bind( Modm .. " + left", hl.dsp.window.move({direction = "l"}) )
hl.bind( Modm .. " + right", hl.dsp.window.move({direction = "r"}) )
hl.bind( Modm .. " + up", hl.dsp.window.move({direction = "u"}) )
hl.bind( Modm .. " + down", hl.dsp.window.move({direction = "d"}) )

hl.bind( Modm .. " + R", hl.dsp.focus({direction = "l"}) )
hl.bind( Modm .. " + N", hl.dsp.focus({direction = "r"}) )
hl.bind( Modm .. " + C", hl.dsp.focus({direction = "u"}) )
hl.bind( Modm .. " + T", hl.dsp.focus({direction = "d"}) )



hl.bind( Modm .. " + home", hl.dsp.window.swap({direction = "l"}) )
hl.bind( Modm .. " + end", hl.dsp.window.swap({direction = "r"}) )

hl.bind( Modm .. " + D", hl.dsp.window.kill() )
hl.bind( Modm .. " + S", hl.dsp.window.float({action = "toggle"}) )

hl.bind( Modm .. " + V", hl.dsp.group.toggle() )
hl.bind( Modm .. " + F", hl.dsp.group.next() )
hl.bind( Modm .. " + L", hl.dsp.group.prev() )
hl.bind( Modm .. " + CONTROL + Prior", hl.dsp.group.next() )
hl.bind( Modm .. " + CONTROL + Next", hl.dsp.group.prev() )


hl.bind( ModS .. " + R", hl.dsp.window.move({direction = "l", out_of_group}) )
hl.bind( ModS .. " + N", hl.dsp.window.move({direction = "r", out_of_group}) )
hl.bind( ModS .. " + C", hl.dsp.window.move({direction = "u", out_of_group}) )
hl.bind( ModS .. " + T", hl.dsp.window.move({direction = "d", out_of_group}) )

hl.bind( Modm .. " + 1", hl.dsp.focus({workspace = 1}) )
hl.bind( Modm .. " + 2", hl.dsp.focus({workspace = 2}) )
hl.bind( Modm .. " + code:48", hl.dsp.focus({workspace = 3}) )
hl.bind( Modm .. " + comma", hl.dsp.focus({workspace = 4}) )
hl.bind( Modm .. " + 3", hl.dsp.focus({workspace = 5}) )
hl.bind( Modm .. " + 4", hl.dsp.focus({workspace = 6}) )
hl.bind( Modm .. " + period", hl.dsp.focus({workspace = 7}) )
hl.bind( Modm .. " + P", hl.dsp.focus({workspace = 8}) )

hl.bind( HyprLm .. " + 1", hl.dsp.window.move({workspace = 1}) )
hl.bind( HyprLm .. " + 2", hl.dsp.window.move({workspace = 2}) )
hl.bind( HyprLm .. " + code:48", hl.dsp.window.move({workspace = 3}) )
hl.bind( HyprLm .. " + comma", hl.dsp.window.move({workspace = 4}) )
hl.bind( HyprLm .. " + 3", hl.dsp.window.move({workspace = 5}) )
hl.bind( HyprLm .. " + 4", hl.dsp.window.move({workspace = 6}) )
hl.bind( HyprLm .. " + period", hl.dsp.window.move({workspace = 7}) )
hl.bind( HyprLm .. " + P", hl.dsp.window.move({workspace = 8}) )

hl.bind( Modm .. " + Escape", hl.dsp.workspace.toggle_special({name = "mail"}) )
hl.bind( HyprLm .. " + Escape", hl.dsp.window.move({workspace = "mail"}) )
hl.bind( Modm .. " + Delete", hl.dsp.workspace.toggle_special({name = "pass"}) )
hl.bind( HyprLm .. " + Delete", hl.dsp.window.move({workspace = "pass"}) )
hl.bind( Modm .. " + minus", hl.dsp.workspace.toggle_special({name = "auth"}) )
hl.bind( HyprLm .. " + minus", hl.dsp.window.move({workspace = "auth"}) )
hl.bind( Modm .. " + I", hl.dsp.workspace.toggle_special({name = "wems"}) )
hl.bind( HyprLm .. " + I", hl.dsp.window.move({workspace = "wems"}) )
hl.bind( Modm .. " + Q", hl.dsp.workspace.toggle_special({name = "music"}) )
hl.bind( HyprLm .. " + Q", hl.dsp.window.move({workspace = "music"}) )
hl.bind( Modm .. " + J", hl.dsp.workspace.toggle_special({name = "editorL"}) )
hl.bind( HyprLm .. " + J", hl.dsp.window.move({workspace = "editorL"}) )
hl.bind( Modm .. " + X", hl.dsp.workspace.toggle_special({name = "editorR"}) )
hl.bind( HyprLm .. " + X", hl.dsp.window.move({workspace = "editorR"}) )
hl.bind( Modm .. " + U", hl.dsp.workspace.toggle_special({name = "noto"}) )
hl.bind( HyprLm .. " + U", hl.dsp.window.move({workspace = "noto"}) )
hl.bind( Modm .. " + K", hl.dsp.workspace.toggle_special({name = "tasker"}) )
hl.bind( HyprLm .. " + K", hl.dsp.window.move({workspace = "tasker"}) )
hl.bind( Modm .. " + A", hl.dsp.workspace.toggle_special({name = "file_manager"}) )
hl.bind( HyprLm .. " + A", hl.dsp.window.move({workspace = "file_manager"}) )
hl.bind( Modm .. " + O", hl.dsp.workspace.toggle_special({name = "terminal_l"}) )
hl.bind( HyprLm .. " + O", hl.dsp.window.move({workspace = "terminal_l"}) )
hl.bind( Modm .. " + E", hl.dsp.workspace.toggle_special({name = "terminal_r"}) )
hl.bind( HyprLm .. " + E", hl.dsp.window.move({workspace = "terminal_r"}) )


hl.bind( Modm .. " + mouse:272", hl.dsp.window.move(), {mouse = true} )
hl.bind( Modm .. " + mouse:273", hl.dsp.window.resize(), {mouse = true} )
