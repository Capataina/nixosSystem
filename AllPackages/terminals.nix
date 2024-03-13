{config, pkgs, ...}:

{
   imports = [
     ./dotconfigs/alacritty.nix
   ];

   programs.alacritty.enable = true;

}
