{tools, ...}: {
  imports = tools.importFoldersExcept ./. ["walker"];

  services = {
    hyprpolkitagent.enable = true;
  };
}
