hl.window_rule({
    match = {
        class = "org.pwmt.zathura",
    },
    workspace = "special:editorL", 
    group = "set",
})

hl.window_rule({
    match = {
        class = "imv",
    },
    workspace = "special:editorL", 
    group = "set",
})

hl.window_rule({
    match = {
        title = "SafeEyes-0",
    },
    workspace = "special:safe-0", 
    monitor = "DP-1",
    group = "set",
    rounding = 0,
    border_size = 0,
    float = 1,
  center = 1,
  size = "100% 100%",
})


hl.window_rule({
    match = {
        title = "SafeEyes-1",
    },
    workspace = "special:safe-1", 
    monitor = "HDMI-A-1",
    group = "set",
    rounding = 0,
    border_size = 0,
    float = 1,
  center = 1,
  size = "100% 100%",
})


hl.window_rule({
  match = {
      class = "io.github.hkdb.Aerion",
  },
  workspace = "special:mail silent", 
  no_anim = 1,
})

hl.window_rule({
  match = {
      class = "proton-pass",
  },
  workspace = "special:pass silent", 
  no_anim = 1,
})


hl.window_rule({
  match = {
      class = "io.ente.auth",
  },
  workspace = "special:auth silent", 
  no_anim = 1,
})

hl.window_rule({
  match = {
      class = "secundary",
  },
  workspace = "special:webs silent", 
  no_anim = 1,
})

hl.window_rule({
  match = {
      class = "Spotify",
  },
  workspace = "special:music silent", 
  no_anim = 1,
})

hl.window_rule({
  match = {
      class = "neovide",
  },
  workspace = "special:editorL", 
  no_anim = 1,
  group = "set always",
})

hl.window_rule({
  match = {
      class = "code",
  },
  workspace = "special:editorR", 
  no_anim = 1,
  group = "set always",
})

hl.window_rule({
  match = {
      class = "md.obsidian.Obsidian",
  },
  workspace = "special:noto silent", 
  no_anim = 1,
})

hl.window_rule({
  match = {
      class = "superproductivity",
  },
  workspace = "special:tasker silent", 
  no_anim = 1,
})

hl.window_rule({
  match = {
      class = "fileTerm",
  },
  workspace = "special:file_manager silent", 
  no_anim = 1,
})

hl.window_rule({
  match = {
      class = "termL",
  },
  workspace = "special:terminal_l silent", 
  no_anim = 1,
})

hl.window_rule({
  match = {
      class = "termR",
  },
  workspace = "special:terminal_r silent", 
  no_anim = 1,
})
