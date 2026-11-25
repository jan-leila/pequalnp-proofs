# Dev shell for Nix / NixOS users: `nix-shell` (or `nix develop` with flakes), then tools/pnp.sh as usual.
# nixpkgs' elan patches the Lean toolchains it downloads so they run on NixOS; lean/lean-toolchain picks the version.
{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  packages = with pkgs; [ git gh curl python3 elan nodejs ];
}
