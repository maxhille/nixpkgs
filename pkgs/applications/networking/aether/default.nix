{ pkgs }:
let
  inherit (pkgs) callPackage fetchurl;
in {
  stable = callPackage ./base.nix rec {
    pname = "aether";
    binaryName = "AetherP2P";
    desktopName = "Aether";
    version = "2.0.0-nix1";
    src = fetchurl {
      url = "https://static.getaether.net/Releases/Aether-2.0.0-dev.15/2011262249.19338c93/linux/Aether-2.0.0-dev.15%2B2011262249.19338c93.tar.gz";
      name = "aether-tarball.tar.gz";
      sha256 = "1hi8w83zal3ciyzg2m62shkbyh6hj7gwsidg3dn88mhfy68himf7";
    };
  };
}
