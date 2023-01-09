{ pkgs ? import <nixpkgs> {}}:
with pkgs;
appimageTools.wrapType1 { # or wrapType1
  name = "Filen";
  src = fetchurl {
    url = "
https://cdn.filen.io/desktop/release/filen_x86_64.AppImage
";
    sha256 = "0bnmzn6ji6bapxdgbwahg2mlcc5n285gzbdpwfla0hnqk2dzs3ah";
  };
  extraPkgs = pkgs: with pkgs; [ ];
}
