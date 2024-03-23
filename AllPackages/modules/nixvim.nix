{ config, pkgs, ... }:

{


  home.packages = [ pkgs.nixfmt pkgs.nixpkgs-fmt ];

  programs.nixvim = {
          enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
    colorschemes.catppuccin = {
      enable = true;
      flavour = "mocha";
    };

    plugins = {
      lualine.enable = true;
    };

    plugins.lsp = {
      enable = true;
    };

    keymaps = [{
      action = "<Esc>:w<CR>";
      key = "<C-s>";
      mode = [ "n" "i" ];
      options = { desc = "Save File"; };
    }];
  };

}
