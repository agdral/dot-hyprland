{tools, ...}: {
  imports = tools.importFoldersExcept ./. [];

  services = {
    hyprpolkitagent.enable = true;
  };
}
