{ pkgs ? import <nixpkgs> { } }:

let
  sdk = pkgs.pico-sdk.override { withSubmodules = true; };
in
pkgs.mkShell {
  packages = with pkgs; [
    cmake
    ninja
    gcc-arm-embedded
    sdk
    picotool
  ];

  PICO_SDK_PATH = "${sdk}/lib/pico-sdk";
  PICO_TOOLCHAIN_PATH = "${pkgs.gcc-arm-embedded}/bin";
}
