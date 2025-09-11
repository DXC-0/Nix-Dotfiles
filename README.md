### Preparation

```bash
sudo tee /etc/ostree/prepare-root.conf <<'EOL'
[composefs]
enabled = yes
[root]
transient = true
EOL

rpm-ostree initramfs-etc --reboot --track=/etc/ostree/prepare-root.conf
```

### Install Nix

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
    sh -s -- install ostree --no-confirm --persistence=/var/lib/nix
```

### Add Nix Unstable

```bash
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
nix-channel --update
```

### Install Home-Manager

```
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
```

```
nix-shell '<home-manager>' -A install
```


