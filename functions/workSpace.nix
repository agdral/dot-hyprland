workspaces: {
  workspace = map (item: "${item.name}, monitor:${item.monitor}") workspaces;

  bind =
    builtins.concatMap (item: [
      "$Modm, ${item.key}, workspace, ${toString item.name}"
      "$HyprLm, ${item.key}, movetoworkspacesilent, ${toString item.name}"
    ])
    workspaces;
}

