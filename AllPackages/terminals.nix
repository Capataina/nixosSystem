{config, pkgs, ...}:

{

   programs.alacritty.enable = true;
   programs.starship.enable = true;

   programs.fish = {
      enable = true;
   };

   home.file = {
   ".config/alacritty/alacritty.toml".source = ./dotconfigs/alacritty.toml;
   ".config/starship.toml".source = ./dotconfigs/starship.toml;
   # ".config/fish/config.fish".source = ./dotconfigs/fish/config.fish;
   };

}
