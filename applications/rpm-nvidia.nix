{ config, lib, pkgs, ... }:

let
  driverPackages = [ "akmod-nvidia" "xorg-x11-drv-nvidia-cuda" "VK_hdr_layer" "libva-nvidia-driver" ];
in {
  home.activation.installDrivers = lib.hm.dag.entryAfter ["installApps"] ''
    for pkg in ${lib.concatStringsSep " " driverPackages}; do
      if ! /usr/bin/sudo rpm-ostree status | grep -i "$pkg" >/dev/null 2>&1; then
        echo "Installing $pkg via rpm-ostree..."
        /usr/bin/sudo rpm-ostree install "$pkg"
      else
        echo "$pkg already installed."
      fi
    done
  '';
}
