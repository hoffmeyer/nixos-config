{ config, pkgs, ...}:

{
  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  # networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  # Set your time zone.
  time.timeZone = "Europe/Copenhagen";

  # Shell aliases
  environment.shellAliases = {
    "xcopy" = "xclip -selection c"; # pipe to xcopy to send to X clipboard
    "xpaste" = "xclip -selection clipboard -o"; # outputs from X clipboard eg. xpaste > text.txt
  };

  # Fonts
  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts # Microsoft free fonts
      inconsolata # Monospaced
      ubuntu_font_family
      dejavu_fonts
      powerline-fonts
      hack-font
      unifont
      noto-fonts
      symbola
      font-awesome-ttf
    ];
  };

  powerManagement.enable = true;
  
}
