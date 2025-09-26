{tools, ...}: {
  imports = tools.importFoldersExcept ./. [];

  services = {
    safeeyes.enable = true;
    hyprpolkitagent.enable = true;
  };
}
