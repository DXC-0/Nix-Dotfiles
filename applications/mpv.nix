{ pkgs, ... }:

{
  home.file.".config/mpv/mpv.conf".text = ''
    
    # Auto-HDR / reverse-tonemaping
    vo=gpu-next
    gpu-api=vulkan
    hdr-compute-peak=yes
    target-peak=1000
    target-prim=bt.2020
    target-trc=pq
    inverse-tone-mapping=yes
    tone-mapping=spline
    target-colorspace-hint=auto


    # Basic SmoothMotion
    video-sync=audio
    interpolation=yes
    tscale=sinc

    # Upscaler
    [upscaler]
    profile-cond=width < 2160
    scale=ewa_lanczossharp
    cscale=ewa_lanczossharp
    glsl-shaders-append="~/.config/mpv/shaders/KrigBilateral.glsl"
    glsl-shaders-append="~/.config/mpv/shaders/SSimSuperRes.glsl"
    vf="scale=iw*2:ih*2"
    video-unscaled=no
    deband=yes
    deband-iterations=4
    deband-threshold=48
    deband-range=16
  '';
}
