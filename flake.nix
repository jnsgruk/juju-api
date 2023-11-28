{
  description = "juju api";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
  };

  outputs = { self, nixpkgs, ... } @ inputs:
    let
      forAllSystems = inputs.nixpkgs.lib.genAttrs [
        "aarch64-linux"
        "x86_64-linux"
        "aarch64-darwin"
      ];
    in
    {
      devShells = forAllSystems (system: {
        default =
          let
            pkgs = nixpkgs.legacyPackages.${system};
          in
          pkgs.mkShell {
            name = "juju-api";
            # Enable experimental features without having to specify the argument
            NIX_CONFIG = "experimental-features = nix-command flakes";
            nativeBuildInputs = with pkgs; [
              nodejs
              caddy
            ];
            shellHook = ''
              export PATH="$PWD/node_modules/.bin/:$PATH"
              exec zsh
            '';
          };
      });
    };
}

