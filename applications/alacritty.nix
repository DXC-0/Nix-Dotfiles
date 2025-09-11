{ pkgs, ... }:

{

home.file.".config/alacritty/alacritty.toml".text = ''
  [env]
  TERM = "xterm-256color"

  [window]
  opacity = 1

  [window.padding]
  x = 10
  y = 10

  [font]
  size = 11

  [font.normal]
  family = "monospace"
  style = "Regular"

  [colors.primary]
  foreground = "0x00FF00"

  [colors.cursor]
  text = "0x000000"

  [colors.selection]
  text = "0x000000"

  [colors.normal]
  black = "0x000000"
  red = "0xFF005F"
  green = "0x00FF00"
  yellow = "0xFFFF00"
  blue = "0x00FFFF"
  magenta = "0xFF00FF"
  cyan = "0x00FFFF"
  white = "0xC0C0C0"

  [colors.bright]
  black = "0x404040"
  red = "0xFF00AA"
  green = "0x00FF00"
  yellow = "0xFFFF5F"
  blue = "0x5F87FF"
  magenta = "0xFF77FF"
  cyan = "0x87FFFF"
  white = "0xFFFFFF"

  [cursor]
  style = "Beam"

  [[keyboard.bindings]]
  key = "V"
  mods = "Control|Shift"
  action = "Paste"

  [[keyboard.bindings]]
  key = "C"
  mods = "Control|Shift"
  action = "Copy"

  [terminal.shell]
  program = "/bin/bash"
  args = ["--login"]
'';

}
