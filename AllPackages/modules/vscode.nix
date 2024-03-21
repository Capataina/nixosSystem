{config, pkgs, ...}:

{

    programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    mutableExtensionsDir = true;

    extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc
      ms-python.python
      bbenoist.nix
    ];

    userSettings = {
      "workbench.colorTheme" = "Catppuccin Mocha";
      "catppuccin.accentColor" = "lavender";
      "editor.semanticHighlighting.enabled" = true;
      "terminal.integrated.minimumContrastRatio" = 1;
      "window.titleBarStyle" = "custom";
      "editor.fontFamily" = "'Hack Nerd Font', monospace";
      "terminal.integrated.fontFamily" = "'Hack Nerd Font', monospace";
      "window.menuBarVisibility" = "toggle";
      "git.openRepositoryInParentFolders" = "never";
    };
  };

}
