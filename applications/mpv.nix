{ pkgs, ... }:

{
  home.file.".config/mpv/mpv.conf".text = ''
    vo=gpu-next
    gpu-api=vulkan
    hdr-compute-peak=yes
    hdr-peak-detect=yes
    target-peak=750
    target-prim=bt.2020
    target-trc=pq
    inverse-tone-mapping=yes
    tone-mapping=spline
    tone-mapping-mode=auto
    target-colorspace-hint=auto
    gamut-mapping=desaturate
  '';
}
