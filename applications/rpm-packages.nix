{ config, lib, pkgs, ... }:

let
  appPackages = [ "alacritty" "steam" "mpv" "libavcodec-freeworld" "ffmpeg" ];
in {
  home.activation.installApps = lib.hm.dag.entryAfter ["writeBoundary"] ''
    for pkg in ${lib.concatStringsSep " " appPackages}; do
      if ! /usr/bin/sudo rpm-ostree status | grep -i "$pkg" >/dev/null 2>&1; then
        echo "Installing $pkg via rpm-ostree..."
        /usr/bin/sudo rpm-ostree install "$pkg"
      else
        echo "$pkg already installed."
      fi
    done
  '';
}
