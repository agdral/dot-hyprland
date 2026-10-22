hl.monitor({ output = "DP-1", mode = "1920x1080@60", position = "0x0", scale = 1 })
hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@60", position = "1920x0", scale = 1 })

hl.workspace_rule({
    workspace = 1,
    monitor = "DP-1",
})
hl.workspace_rule({
    workspace = 2,
    monitor = "DP-1",
})
hl.workspace_rule({
    workspace = 3,
    monitor = "DP-1",
})
hl.workspace_rule({
    workspace = 4,
    monitor = "DP-1",
})
hl.workspace_rule({
    workspace = 5,
    monitor = "HDMI-A-1",
})
hl.workspace_rule({
    workspace = 6,
    monitor = "HDMI-A-1",
})
hl.workspace_rule({
    workspace = 7,
    monitor = "HDMI-A-1",
})
hl.workspace_rule({
    workspace = 8,
    monitor = "HDMI-A-1",
})

