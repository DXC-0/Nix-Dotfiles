{ config, pkgs, ... }:

let
  protonVersion = "GE-Proton10-16";

  protonGE = pkgs.stdenv.mkDerivation {
    name = protonVersion;
    src = pkgs.fetchurl {
      url = "https://github.com/GloriousEggroll/proton-ge-custom/releases/download/${protonVersion}/${protonVersion}.tar.gz";
      sha256 = "X231hYZUtV8PgsInjhOpallmwldqwTqSVCKtLT5worQ=";
    };
    unpackPhase = "tar -xzf $src";
    installPhase = ''
      mkdir -p $out
      cp -r . $out/
    '';
  };

  installPath = ".steam/steam/compatibilitytools.d/";
in
{
  home.file."${installPath}" = {
    source = protonGE;
    recursive = true;
  };
}
