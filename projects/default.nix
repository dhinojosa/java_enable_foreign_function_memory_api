# default.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    rustc
    cargo
    rustfmt
    clippy
  ];

  RUST_BACKTRACE = "1"; # optional: enables backtraces for panic debugging
}
