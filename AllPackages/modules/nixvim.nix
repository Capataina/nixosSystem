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
      nix.enable = true;
      telescope.enable = true;
      oil.enable = true;
      treesitter.enable = true;
      luasnip.enable = true;
      lsp-format.enable = true;
    };

    plugins.lsp = {
      enable = true;
      servers = {
        tsserver.enable = true;
      };
    };

    plugins.cmp = {
      enable = true;
      autoEnableSources = true;
    };

    keymaps = [{
      action = "<Esc>:w<CR>";
      key = "<C-s>";
      mode = [ "n" "i" ];
      options = { desc = "Save File"; };
    }];

  };

}
