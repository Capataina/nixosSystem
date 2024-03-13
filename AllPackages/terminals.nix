{config, pkgs, ...}:

{

   programs.alacritty.enable = true;

   home.file = {
   ".config/alacritty/alacritty.toml".source = ./dotconfigs/alacritty.toml;
   };

}
