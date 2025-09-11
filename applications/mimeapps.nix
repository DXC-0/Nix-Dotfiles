{ pkgs, ... }:

{

  home.file.".config/mimeapps.list".text = ''
[Added Associations]
application/x-extension-htm=firefox.desktop;
application/x-extension-html=firefox.desktop;
application/x-extension-shtml=firefox.desktop;
application/x-extension-xht=firefox.desktop;
application/x-extension-xhtml=firefox.desktop;
application/xhtml+xml=firefox.desktop;
audio/aac=vlc.desktop;
audio/mp4=vlc.desktop;
audio/mpeg=vlc.desktop;
audio/mpegurl=vlc.desktop;
audio/ogg=vlc.desktop;
audio/vnd.rn-realaudio=vlc.desktop;
audio/vorbis=vlc.desktop;
audio/x-flac=vlc.desktop;
audio/x-mp3=vlc.desktop;
audio/x-mpegurl=vlc.desktop;
audio/x-ms-wma=vlc.desktop;
audio/x-musepack=vlc.desktop;
audio/x-oggflac=vlc.desktop;
audio/x-pn-realaudio=vlc.desktop;
audio/x-scpls=vlc.desktop;
audio/x-speex=vlc.desktop;
audio/x-vorbis=vlc.desktop;
audio/x-vorbis+ogg=vlc.desktop;
audio/x-wav=vlc.desktop;
text/html=firefox.desktop;
x-scheme-handler/chrome=firefox.desktop;
x-scheme-handler/geo=openstreetmap-geo-handler.desktop;
x-scheme-handler/http=firefox.desktop;
x-scheme-handler/https=firefox.desktop;

[Default Applications]
application/x-extension-htm=firefox.desktop
application/x-extension-html=firefox.desktop
application/x-extension-shtml=firefox.desktop
application/x-extension-xht=firefox.desktop
application/x-extension-xhtml=firefox.desktop
application/xhtml+xml=firefox.desktop
audio/aac=vlc.desktop;
audio/mp4=vlc.desktop;
audio/mpeg=vlc.desktop;
audio/mpegurl=vlc.desktop;
audio/ogg=vlc.desktop;
audio/vnd.rn-realaudio=vlc.desktop;
audio/vorbis=vlc.desktop;
audio/x-flac=vlc.desktop;
audio/x-mp3=vlc.desktop;
audio/x-mpegurl=vlc.desktop;
audio/x-ms-wma=vlc.desktop;
audio/x-musepack=vlc.desktop;
audio/x-oggflac=vlc.desktop;
audio/x-pn-realaudio=vlc.desktop;
audio/x-scpls=vlc.desktop;
audio/x-speex=vlc.desktop;
audio/x-vorbis=vlc.desktop;
audio/x-vorbis+ogg=vlc.desktop;
audio/x-wav=vlc.desktop;
text/html=firefox.desktop
x-scheme-handler/chrome=firefox.desktop
x-scheme-handler/freetube=freetube.desktop
x-scheme-handler/geo=openstreetmap-geo-handler.desktop;
x-scheme-handler/http=firefox.desktop
x-scheme-handler/https=firefox.desktop
x-scheme-handler/podman-desktop=Podman Desktop.desktop
x-scheme-handler/x-github-client=github-desktop.desktop
x-scheme-handler/x-github-desktop-auth=github-desktop.desktop
  '';

}
