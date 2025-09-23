{ pkgs, lib, ... }:

{
  home.file.".config/mimeapps.list".text = ''
[Added Associations]
# Navigateur - Firefox
application/x-extension-htm=firefox.desktop;
application/x-extension-html=firefox.desktop;
application/x-extension-shtml=firefox.desktop;
application/x-extension-xht=firefox.desktop;
application/x-extension-xhtml=firefox.desktop;
application/xhtml+xml=firefox.desktop;
text/html=firefox.desktop;
x-scheme-handler/chrome=firefox.desktop;
x-scheme-handler/geo=openstreetmap-geo-handler.desktop;
x-scheme-handler/http=firefox.desktop;
x-scheme-handler/https=firefox.desktop;

# Lecteur audio - MPV
audio/aac=mpv.desktop;
audio/mp4=mpv.desktop;
audio/mpeg=mpv.desktop;
audio/mpegurl=mpv.desktop;
audio/ogg=mpv.desktop;
audio/vnd.rn-realaudio=mpv.desktop;
audio/vorbis=mpv.desktop;
audio/x-flac=mpv.desktop;
audio/x-mp3=mpv.desktop;
audio/x-mpegurl=mpv.desktop;
audio/x-ms-wma=mpv.desktop;
audio/x-musepack=mpv.desktop;
audio/x-oggflac=mpv.desktop;
audio/x-pn-realaudio=mpv.desktop;
audio/x-scpls=mpv.desktop;
audio/x-speex=mpv.desktop;
audio/x-vorbis=mpv.desktop;
audio/x-vorbis+ogg=mpv.desktop;
audio/x-wav=mpv.desktop;

# IDE - Visual Studio Code
text/plain=code.desktop;
text/x-python=code.desktop;
text/x-shellscript=code.desktop;
application/json=code.desktop;
application/javascript=code.desktop;
application/x-yaml=code.desktop;
application/x-php=code.desktop;
application/x-ruby=code.desktop;
application/x-perl=code.desktop;
application/x-c=code.desktop;
application/x-c++=code.desktop;
application/x-java=code.desktop;

# Terminal - Alacritty
x-scheme-handler/terminal=alacritty.desktop;
application/x-shellscript=alacritty.desktop;

[Default Applications]
# Navigateur - Firefox
application/x-extension-htm=firefox.desktop
application/x-extension-html=firefox.desktop
application/x-extension-shtml=firefox.desktop
application/x-extension-xht=firefox.desktop
application/x-extension-xhtml=firefox.desktop
application/xhtml+xml=firefox.desktop
text/html=firefox.desktop
x-scheme-handler/chrome=firefox.desktop
x-scheme-handler/freetube=freetube.desktop
x-scheme-handler/geo=openstreetmap-geo-handler.desktop;
x-scheme-handler/http=firefox.desktop
x-scheme-handler/https=firefox.desktop
x-scheme-handler/podman-desktop=Podman Desktop.desktop
x-scheme-handler/x-github-client=github-desktop.desktop
x-scheme-handler/x-github-desktop-auth=github-desktop.desktop

# Lecteur audio - MPV
audio/aac=mpv.desktop;
audio/mp4=mpv.desktop;
audio/mpeg=mpv.desktop;
audio/mpegurl=mpv.desktop;
audio/ogg=mpv.desktop;
audio/vnd.rn-realaudio=mpv.desktop;
audio/vorbis=mpv.desktop;
audio/x-flac=mpv.desktop;
audio/x-mp3=mpv.desktop;
audio/x-mpegurl=mpv.desktop;
audio/x-ms-wma=mpv.desktop;
audio/x-musepack=mpv.desktop;
audio/x-oggflac=mpv.desktop;
audio/x-pn-realaudio=mpv.desktop;
audio/x-scpls=mpv.desktop;
audio/x-speex=mpv.desktop;
audio/x-vorbis=mpv.desktop;
audio/x-vorbis+ogg=mpv.desktop;
audio/x-wav=mpv.desktop;

# IDE - Visual Studio Code
text/plain=code.desktop
text/x-python=code.desktop
text/x-shellscript=code.desktop
application/json=code.desktop
application/javascript=code.desktop
application/x-yaml=code.desktop
application/x-php=code.desktop
application/x-ruby=code.desktop
application/x-perl=code.desktop
application/x-c=code.desktop
application/x-c++=code.desktop
application/x-java=code.desktop

# Terminal - Alacritty
x-scheme-handler/terminal=alacritty.desktop
application/x-shellscript=alacritty.desktop
  '';

home.activation.set-kde-terminal = lib.hm.dag.entryAfter ["writeBoundary"] ''
    ${pkgs.kdePackages.kconfig}/bin/kwriteconfig6 \
      --file kdeglobals \
      --group General \
      --key TerminalApplication \
      alacritty
  '';

}
