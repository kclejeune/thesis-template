{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-21.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; };
      in {
        devShell = pkgs.mkShell {
          buildInputs = [
            pkgs.texlive.combined.scheme-full
            pkgs.nodejs
            pkgs.rsync
            (pkgs.python39.withPackages (ps: with ps; [ pre-commit ]))
          ];
        };
      });
}
