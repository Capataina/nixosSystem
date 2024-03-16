{config, pkgs, ...}:

{

  gtk.enable = true;
  qt.enable = true;

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        gtk-theme = "Catppuccin-Mocha-Compact-Pink-Dark";
      };
    };
  };

  gtk.theme = {

    name = "Catppuccin-Mocha-Compact-Pink-Dark";
    package = pkgs.catppuccin-gtk.override {
      variant = "mocha";
    };
  
  };

  home.packages = [
    pkgs.gnome.gnome-themes-extra
    pkgs.libadwaita
    pkgs.dconf
    pkgs.tracker
    pkgs.catppuccin-gtk
  ];

  xdg.configFile = {

    "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
    "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
    "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";

  };    

}


