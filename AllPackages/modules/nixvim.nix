{config, pkgs, ...}:

{

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    colorschemes.catppuccin = {
      enable = true;
      flavour = "mocha";
    };

  };

}
