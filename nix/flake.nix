{
  description = "TMInfosec Doc Environment";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs/7d71001b796340b219d1bfa8552c81995017544a";
    flake-compat = { url = "github:edolstra/flake-compat"; flake = false; };
    devshell-flake.url = "github:numtide/devshell";
    mach-nix = { url = "github:DavHau/mach-nix"; inputs.nixpkgs.follows = "nixpkgs"; };
  };

  outputs = inputs@{ self, nixpkgs, flake-utils, flake-compat, devshell-flake, mach-nix }:
    { }
    //
    (flake-utils.lib.eachSystem [ "x86_64-linux" "x86_64-darwin" ]
      (system:
        let
          machLib = import mach-nix
            {
              # pypiDataRev = pypi-deps-db.rev;
              # pypiDataSha256 = pypi-deps-db.narHash;
              python = "python38";
              inherit pkgs;
            };
          pkgs = import nixpkgs {
            inherit system;
            overlays = [
              self.overlay
              devshell-flake.overlay
            ];
            config = { };
          };
        in
        rec {

          python-packages-custom = machLib.mkPython rec {
            requirements = ''
              mkdocs-material
              mkdocs-awesome-pages-plugin
              setuptools
            '';
          };

          packages = { };

          devShell = with pkgs; devshell.mkShell {
            imports = [ (devshell.importTOML ./commands.toml) ];
            packages = [
              python-packages-custom
            ];
          };
        })
    ) //
    {
      overlay = final: prev: { };
    };
}
