{config, pkgs, ...}:

{

  gtk.enable = true;
  # qt.enable = true;

  gtk.theme = {

    name = "Catppuccin-Macchiato-Compact-Pink-Dark";
    package = pkgs.catppuccin-gtk.override {
      accents = [ "pink" ];
      size = "compact";
      tweaks = [ "rimless" "black" ];
      variant = "mocha";
    };
  
  };

}
