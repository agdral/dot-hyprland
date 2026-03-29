{lib}: special: let
  toList = value:
    if lib.isList value
    then value
    else if lib.isString value
    then [value]
    else [];

  extractBind = builtins.concatMap (
    item: let
      moveSpace = [
        "$Modm, ${item.key}, togglespecialworkspace, ${item.name}"
        "$HyprLm, ${item.key}, movetoworkspacesilent, special:${item.name}"
      ];
      execApp =
        if item ? app
        then map (app: "$HyprRm, ${item.key}, exec, ${app}") (toList item.app)
        else [];
    in
      moveSpace ++ execApp
  );

  extractApp = builtins.concatMap (
    item:
      if item ? app
      then map (app: app) (toList item.app)
      else []
  );

  extractRule = builtins.concatMap (
    item: let
      noanim = map (class: "match:class ${class}, no_anim 1") (toList item.class);
      specialRule =
        if item ? silent && item.silent == false
        then map (class: "match:class ${class}, workspace special:${item.name}") (toList item.class)
        else map (class: "match:class ${class}, workspace special:${item.name} silent") (toList item.class);
      group =
        if item ? group && item.group == true
        then map (class: "match:class ${class}, group set always") (toList item.class)
        else [];
    in
      noanim ++ specialRule ++ group
  );
in {
  exec-once = extractApp special;
  windowrule = extractRule special;
  bind = extractBind special;
}

