{ config, pkgs, ... }:

let
  protonVersion = "GE-Proton10-15";

  protonGE = pkgs.fetchFromGitHub {
    owner = "GloriousEggroll";
    repo = "proton-ge-custom";
    rev = protonVersion;
    sha256 = "CNTHHkAYMqYipeRdCSUYl8dbq9VWatsk3SZ/h/be3LE=";
  };

  installPath = ".steam/root/compatibilitytools.d/${protonVersion}";
in
{
  home.file."${installPath}".source = protonGE;
}
