{ config, pkgs, ...}:

{
  nixpkgs.config.allowUnfree = true;

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    ant
    arc-gtk-theme
    arc-icon-theme
    binutils # needed to get readelf and patchelf for pathing 3rd party binaries
    dropbox
    firefox
    gimp
    git
    git-lfs
    google-chrome
    openssl # needed for p4merge as shared lib
    weechat
    meld
    (eclipses.eclipseWithPlugins {
      eclipse = eclipses.eclipse-sdk-46;
      jvmArgs = [ "-Xmx2048m" ];
      plugins = with eclipses.plugins;
        [ color-theme ];
    })
    oh-my-zsh
    slack
    spotify
    tdesktop
    tig
    tmux
    vim
    wget
    zip
    zlib # needed for p4merge as shared lib
    xclip
  ];
  
}
