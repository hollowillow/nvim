{
  description = "Flake based lua dev env";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";
  in {
    devShells."${system}".default = let
      pkgs = import nixpkgs {inherit system;};
    in
      pkgs.mkShell {
        packages = with pkgs; [
          lua-language-server
          stylua
        ];
        shellHook = ''
          printf 'lua-language-server '; lua-language-server --version
          stylua --version
        '';
      };
  };
}
