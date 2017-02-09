{ config, pkgs, ...}:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.extraUsers.flemming = {
    group = "users";
    description = "Flemming Hoffmeyer";
    shell = "/run/current-system/sw/bin/zsh";
    extraGroups = [
      "wheel"
      "systemd-journal"
      "disk"
      "audio"
      "video"
      "lp" # for bluetooth
    ];
    createHome = true;
    home = "/home/flemming";
    isNormalUser = true;
  };
  
}
