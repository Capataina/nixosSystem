{config, pkgs, ...}:

{

  home.file = {
    ".config/bspwm/bspwmrc".source = ./dotconfigs/bspwm/bspwmrc;
    ".config/picom/picom.conf".source = ./dotconfigs/picom/picom.conf;
    ".config/polybar/config.ini".source = ./dotconfigs/polybar/config.ini;
    ".config/sxhkd/sxhkdrc".source = ./dotconfigs/sxhkd/sxhkdrc;
  };

}