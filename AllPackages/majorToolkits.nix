{config, pkgs, ...}:

{

  gtk.enable = true;
  qt = {
    enable = true;
    platformTheme = "gtk";
  };

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        gtk-theme = "Catppuccin-Mocha-Standard-Lavender-Dark";
      };
    };
  };

  gtk.theme = {

    name = "Catppuccin-Mocha-Standard-Lavender-Dark";
    package = pkgs.catppuccin-gtk.override {
      accents = [ "lavender" ];
      size = "standard";
      variant = "mocha";
    };
  
  };

  home.packages = [
    pkgs.gnome.gnome-themes-extra
    pkgs.libadwaita
    pkgs.dconf
    pkgs.tracker
    pkgs.tracker-miners
    pkgs.catppuccin-gtk
  ];

  xdg.configFile = {

    "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
    "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
    "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";

  };    

}


