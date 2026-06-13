---@brief
---
--- https://github.com/nix-community/nixd
---
--- Nix language server, based on nix libraries.
---
--- If you are using Nix with Flakes support, run `nix profile install github:nix-community/nixd` to install.
--- Check the repository README for more information.

---@type vim.lsp.Config
return {
    cmd = { 'nixd' },
    filetypes = { 'nix' },
    root_markers = { 'flake.nix', '.git' },
    settings = {
        nixd = {
            nixpkgs = {
                expr = 'import (builtins.getFlake(toString ./.)).inputs.nixpkgs { }',
                -- expr = 'import (builtins.getFlake "/etc/nixos").inputs.nixpkgs { }',
                -- expr = 'import <nixpkgs> { }',
            },
            formatting = {
                command = { 'alejandra' },
            },
            options = {
                nixos = {
                    expr = '(builtins.getFlake(toString ./.)).nixosConfigurations.nixos.options',
                },
                home_manager = {
                    expr =
                    '(builtins.getFlake(toString ./.)).nixosConfigurations.nixos.options.home-manager.users.type.getSubOptions []',
                },
            },
        },
    },
}
